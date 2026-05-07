library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity patron_juego is
    generic(
        MAX_VIDAS : integer := 3
    );
    Port (
        clks     : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        patron : in  STD_LOGIC_VECTOR (7 downto 0); --El patron es de 4 elementos, pero se usa un vector del doble de tamaño por lo siguiente
        --01=derecha, 10=izquierda, 00=11=Imposible o derrota segura

        sw: in std_logic_vector(3 downto 0);--Los 2 sw más a la derecha hacen la combinación, solo acepta 10 o 01 el programa, --Los otros sw son para seleccionar un patron predeterminado (debugear)
        bt0: in std_logic;--Ir cambiando de estado (aceptar resultado y continuar al siguiente estado)
        start   : in  STD_LOGIC;--Señal de inicio que llega de la FSM

        leds    : out STD_LOGIC_VECTOR (3 downto 0);--Se prenden de derecha a izquierda a medida que se acierta un patron: 0111=lleva 3 aciertos
        rgb     : out STD_LOGIC_VECTOR (2 downto 0);--Verde=Correcto, Rojo=Incorrecto, Azul= Introduciendo patron

        wol    : out STD_LOGIC;--Señal de win or lose
        valid   : out STD_LOGIC--Señal de aviso 
    );
end patron_juego;

architecture Behavioral of patron_juego is

    type state_type is (WAIT_START, IDLE, SHOW_RESULT, WIN, LOSE, RES); 
    signal state : state_type := WAIT_START;

    constant patron_1 : STD_LOGIC_VECTOR(7 downto 0) := "01100110";--Patron de prueba
    constant patron_2 : STD_LOGIC_VECTOR(7 downto 0) := "11101010";--Patron de prueba imposible de ganar (tiene patron 11)

    signal step  : integer range 0 to 4 := 0;
    signal vidas : integer range 0 to MAX_VIDAS := MAX_VIDAS;

    signal patron_reg : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
    signal leds_reg : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal rgb_reg  : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');

    signal wol_reg  : STD_LOGIC := '0';
    signal valid_reg : STD_LOGIC := '0';

    signal user_input : STD_LOGIC;--user_input=1 =>01 elección
    signal valid_input : STD_LOGIC;--Señal que valida el patron introducido

    signal bt_prev : STD_LOGIC := '0';

    signal current_step : STD_LOGIC_VECTOR(1 downto 0);

begin
    process(sw)
    begin
        if sw(0) = '1' and sw(1) = '0' then
            user_input  <= '1';
            valid_input <= '1';
        elsif sw(1) = '1' and sw(0) = '0' then
            user_input  <= '0';
            valid_input <= '1';
        else
            valid_input <= '0';
        end if;
    end process;
    process(step, patron_reg)
    begin
        case step is --Convierte el patron de 8 bits a 4
            when 0 => current_step <= patron_reg(1 downto 0);
            when 1 => current_step <= patron_reg(3 downto 2);
            when 2 => current_step <= patron_reg(5 downto 4);
            when 3 => current_step <= patron_reg(7 downto 6);
            when others => current_step <= "00";
        end case;
    end process;
    process(clks)
    begin
        if rising_edge(clks) then
            if rst = '1' then
                state <= WAIT_START;
                step <= 0;
                vidas <= MAX_VIDAS;
                leds_reg <= (others => '0');
                rgb_reg <= (others => '0');
                wol_reg <= '0';
                valid_reg <= '0';
                patron_reg <= (others => '0');
            else
                bt_prev <= bt0;--Lo mismo que valid (un debouncer primitivo)
                valid<='0';--Fuerza a que valid dure 1 clk como maximo distinto de 0
                case state is
                    when WAIT_START =>--Estado de espera, pasa al siguiente estado cuando la FSM le avisa
                        wol<='0';
                        valid<='0';
                        wol_reg <= '0';
                        valid_reg <= '0';
                        leds_reg <= (others => '0');
                        rgb_reg  <= "000";
                        if start = '1' then--Al llegar el aviso inicializa los valores 
                            state <= IDLE;
                            step <= 0;
                            vidas <= MAX_VIDAS;
                            if sw(3) = '1' and sw(2)='0' then --Elige el patron para jugar, el que llega desde Block memory card o los de prueba
                                patron_reg <= patron_2;
                            elsif sw(2) = '1' and sw(3)='0' then
                                patron_reg <= patron_1;
                            else
                                patron_reg <= patron;
                            end if;
                        end if;
                    when IDLE =>--En este estado se introduce una de las 4 partes del patron
                        rgb_reg <= "001";--Azul=Esperando
                        if bt0 = '1' and bt_prev = '0' then--Al apretar el boton envia la decisión (en ese momento se ve el patron de los 2 sw a la derecha)
                            if valid_input = '1' then--Verifica que la combinación es valida
                                if current_step = "00" or current_step = "11" then --Caso imposible (derrota segura), se comporta igual a que fuera un error normal
                                    rgb_reg <= "100";--Error
                                    leds_reg <= (others => '0');--Se apagan los leds (representa que se vuelve al inicio)
                                    step <= 0;--Se empieza desde 0
                                    vidas <= vidas - 1;--Descuento de 1 vida
                                    if vidas = 1 then--Al tener 1 de vida y en la linea anterior perder 1, entonces perdió el juego
                                        state <= LOSE;
                                    else
                                        state <= SHOW_RESULT;--Estado intermedio que muestra el resultado del patron introducido
                                    end if;
                                elsif current_step = "01" then--Si la parte vista ahora del patron es 01=derecha
                                    if user_input = '1' then--Derecha=>Correcto
                                        leds_reg(step) <= '1';--Se prende el led correspondiente al patron
                                        rgb_reg <= "010";--Correcto
                                        if step = 3 then--Si está en el tercer paso entonces ganó el jugador
                                            state <= WIN;
                                        else--Si aún no llega al final, se pasa al estado intermedio
                                            step <= step + 1;
                                            state <= SHOW_RESULT;
                                        end if;
                                    else--Erroneo, mismo comportamiento que caso imposible
                                        rgb_reg <= "100";
                                        leds_reg <= (others => '0');
                                        step <= 0;
                                        vidas <= vidas - 1;

                                        if vidas = 1 then
                                            state <= LOSE;
                                        else
                                            state <= SHOW_RESULT;
                                        end if;
                                    end if;
                                elsif current_step = "10" then --Izquierda, exactamente lo mismo que Derecha
                                    if user_input = '0' then
                                        leds_reg(step) <= '1';
                                        rgb_reg <= "010";

                                        if step = 3 then
                                            state <= WIN;
                                        else
                                            step <= step + 1;
                                            state <= SHOW_RESULT;
                                        end if;
                                    else
                                        rgb_reg <= "100";
                                        leds_reg <= (others => '0');
                                        step <= 0;
                                        vidas <= vidas - 1;

                                        if vidas = 1 then
                                            state <= LOSE;
                                        else
                                            state <= SHOW_RESULT;
                                        end if;
                                    end if;
                                end if;
                            end if;
                        end if;
                    when SHOW_RESULT =>--Estado intermedio, no cambia nada por lo que muestra Rojo o verde y los leds prendidos según el paso
                        if bt0 = '1' and bt_prev = '0' then--Apretar el boton vuelve al estado de introducir patron
                            state <= IDLE;
                        end if;
                    when WIN =>--Si gana se prenden todos los leds, rgb=Verde y envia la señal de victoria y validación 
                        leds_reg <= "1111";
                        rgb_reg  <= "010";
                        wol_reg  <= '1'; 
                        valid_reg <= '1';
                        state <= RES;
                    when LOSE =>--Simil al estado WIN
                        leds_reg <= "1111";
                        rgb_reg  <= "100";
                        wol_reg  <= '0';
                        valid_reg <= '1';
                        state <= RES; 
                    when RES =>--El estado WIN o LOSE dura 1 clk
                        if bt0 = '1' and bt_prev = '0' then--Al apretar el boton la señal wol y valid cambian y se pasa al estado de espera
                            wol<=wol_reg;
                            valid <= valid_reg;
                            state <= WAIT_START;
                        end if;

                end case;
            end if;
        end if;
    end process;
    --Asignación de los registros a las salidas
    leds  <= leds_reg;
    rgb   <= rgb_reg;
end Behavioral;