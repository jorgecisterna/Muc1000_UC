library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led_manager is
    Port (
        clk      : in std_logic;
        rst      : in std_logic;
        g1       : in std_logic;--Señal de activación de juego 1
        g2       : in std_logic;
        g3       : in std_logic;
        update : in std_logic;--Señal de aviso de termino de juego
        leds_fsm      : in std_logic_vector(3 downto 0);
        leds_juego_1  : in std_logic_vector(3 downto 0);
        leds_juego_2  : in std_logic_vector(3 downto 0);
        leds_juego_3  : in std_logic_vector(3 downto 0);
        leds_final    : out std_logic_vector(3 downto 0)
    );
end led_manager;
architecture Behavioral of led_manager is
signal selector : std_logic_vector(1 downto 0) := "00";
begin
    process(clk, rst)
    begin
        if rst = '1' then
            selector <= "00";--Por default muestra el led del banco
        elsif rising_edge(clk) then
            if update = '1' then--Terminar el juego = Mostrar dinero del banco (estado inicial)
                selector <= "00";
            elsif g1 = '1' then--Al llegar la señal de activación de un juego se muestra los leds de ese juego
                selector <= "01";
            elsif g2 = '1' then
                selector <= "10";
            elsif g3 = '1' then
                selector <= "11";
            end if;
        end if;
    end process;
    process(selector, leds_fsm, leds_juego_1, leds_juego_2, leds_juego_3)--Si cambia alguno
    begin
        case selector is--Asignación de la salida
            when "01" => leds_final <= leds_juego_1;
            when "10" => leds_final <= leds_juego_2;
            when "11" => leds_final <= leds_juego_3;
            when others => leds_final <= leds_fsm;
        end case;
    end process;
end Behavioral;