library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity penales is
    generic(
        MIN_TURNOS : integer := 4;
        LFSR_SEED : std_logic_vector(3 downto 0) := "1010"
    );
    Port (
        clk : in  std_logic;
        ini : in std_logic;
        reset : in  std_logic;
        jugar : in  std_logic; --Boton de aceptar
        sw : in  std_logic_vector(3 downto 0);--Selección donde patear/jugar
        wol : out std_logic;
        update : out std_logic;
        leds : out std_logic_vector(3 downto 0)
    );
end penales;

architecture Behavioral of penales is
type state_type is (ESP, IDLE, GENERAR, UPDATE_SCORE, CHECK_FIN, ACEP);

signal state : state_type := ESP;

--Genera decisión seudoaleatoria de la fpga
signal lfsr : std_logic_vector(3 downto 0) := LFSR_SEED;--Ahora se puede cambiar la semilla
signal direc_fpga : std_logic_vector(3 downto 0);

signal resul : std_logic;
signal puntaje_usu : integer := 0;
signal puntaje_fpga : integer := 0;
signal turno : integer range 0 to 3 := 0; --Par=Patea jugador, impar ataja
signal fin_juego : std_logic := '0';
signal jugar_prev : std_logic := '0';--"Debouncer" basico

procedure actualizar_puntaje(
    signal res : in std_logic;--1=ATAJADA
    signal turno : in integer;
    signal p_usu : inout integer;
    signal p_fpga : inout integer
) is
begin
    if (turno mod 2) = 0 then --Turno par=>Patea jugador
        if res = '0' then--No atajada=Gol jugador
            p_usu <= p_usu + 1;
        else
            p_fpga <= p_fpga + 1;
        end if;
    else
        if res = '1' then--Jugador atajó el penal
            p_usu <= p_usu + 1;
        else
            p_fpga <= p_fpga + 1;
        end if;
    end if;
end procedure;

function cont_leds(
    turno : integer;
    puntaje_usu : integer;
    puntaje_fpga : integer;
    fin : std_logic
) return std_logic_vector is 
--Cada vez que se cambia el puntaje del jugador o de la fpga, el turno cambia o se termina la tanda, se activa la función
variable leds_v : std_logic_vector(3 downto 0) := "0000";

begin
    if fin = '1' then--Terminó la tanda
        leds_v(1 downto 0) := "11";--Los 2 leds más a la derecha se prenden representando el termino
        if puntaje_fpga > puntaje_usu then
            leds_v(2) := '1';
        elsif puntaje_usu > puntaje_fpga then
            leds_v(3) := '1';
        end if;
    else
        if (turno mod 2) = 0 then
            leds_v(1) := '1'; -- patea jugador
        else
            leds_v(0) := '1'; -- ataja jugador
        end if;
        if puntaje_fpga > puntaje_usu then
            leds_v(2) := '1';--Tercer led se prende si tiene ventaja la fpga
        elsif puntaje_usu > puntaje_fpga then
            leds_v(3) := '1';--Cuarto led se prende si el jugador tiene ventaja
        end if;
    end if;
    return leds_v;
end function;

begin

process(clk)
begin
    if rising_edge(clk) then
        lfsr <= lfsr(2 downto 0) & (lfsr(3) xor lfsr(2));--Producción de vector de 4 bits seudoaleatorio
    end if;
end process;

process(lfsr)
begin
    case lfsr(2 downto 1) is--Asignación de la seudoaleatoriedad a un decisión de la fpga
        when "00" => direc_fpga <= "0001";
        when "01" => direc_fpga <= "0010";
        when "10" => direc_fpga <= "0100";
        when others => direc_fpga <= "1000";
    end case;
end process;

process(clk, reset)
begin
    if reset = '1' then
        state <= ESP;

    elsif rising_edge(clk) then
        jugar_prev <= jugar;--Existe un clk donde el boton vale 1 y esta señal 0

        case state is

            when ESP =>--Espera la señal de inicio que viene de la FSM
                update<='0';
                wol<='0';
                puntaje_usu <= 0;
                puntaje_fpga <= 0;
                turno <= 0;
                fin_juego <= '0';
                jugar_prev <= '0';

                if ini='1' then
                    state<=IDLE;
                end if;

            when IDLE =>--Momento para seleccionar donde patear o atajar
                if (jugar = '1' and jugar_prev = '0') and fin_juego = '0' then--Solo en ese clk se activa el proceso
                    state <= GENERAR;
                end if;

            when GENERAR =>
                if (sw and direc_fpga) /= "0000" then --Se busca que haya 1 match, estrictamente debiera ser que sean exactamente iguales pero esto permite debugear o forzar victorias/empates (Introducir 1111 en los sw asegura algún match, es decir, si o si ataja)
                    resul <= '1';--Atajada
                else
                    resul <= '0';
                end if;
                state <= UPDATE_SCORE;

            when UPDATE_SCORE =>--Le da 1 clk para que se actualicen los puntajes
                actualizar_puntaje(resul, turno, puntaje_usu, puntaje_fpga); --Requiere 1 clk para que se actualicen los valores
                state <= CHECK_FIN; 

            when CHECK_FIN =>--Como minimo se patea y ataja 2 veces
                if turno >= (MIN_TURNOS-1) then--Luego de hacer lo minimo se activa un MUERE MUERE en la tanda de penales
                    if puntaje_usu /= puntaje_fpga then--Si hay una diferencia entonces se termina el juego
                        fin_juego <= '1';
                        state <= ACEP;
                    else
                        turno <= turno + 1;
                        state <= IDLE; -- MUERE MUERE
                    end if;
                else
                    turno <= turno + 1;--Añade un turno y se vuelve a elegir donde patear o atajar
                    state <= IDLE;
                end if;

            when ACEP =>--Terminó el juego y para enviar la señal de aviso se debe apretar el boton, mientras los leds muestran quien gano
                if (jugar = '1' and jugar_prev = '0') then--Solo en ese clk se activa el proceso
                    if puntaje_usu>puntaje_fpga then
                        wol<='1';
                    else
                        wol<='0';
                    end if;
                    update<='1';
                    state <= ESP;--Se vuelve al estado de espera
                end if;

        end case;
    end if;
end process;

leds <= cont_leds(turno, puntaje_usu, puntaje_fpga, fin_juego);--Asignar los leds la función creada
end Behavioral;