library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity arcade_fsm is
port(
    clk  : in  std_logic;
    rst  : in  std_logic;
    btn0 : in std_logic;
    btn1 : in std_logic;
    btn2 : in std_logic;
    btn3 : in std_logic;
    sw   : in std_logic_vector(3 downto 0);
    leds : out std_logic_vector(3 downto 0);

    -- Comunicación con el banco
    bank_response : in std_logic_vector(3 downto 0);
    bank_next_page : out std_logic;
    bank_bet_valid : in std_logic;
    bank_bet_ok : in std_logic;
    bank_bet_request : out std_logic_vector(3 downto 0);
    bank_game_result : out std_logic;
    bank_game_aviso : out std_logic;
    -- Comunicación con juegos
    game_done : in std_logic;
    game_win  : in std_logic;
    game_start_eins : out std_logic;
    game_start_zwei : out std_logic;
    game_start_drei : out std_logic
);
end arcade_fsm;

architecture Behavioral of arcade_fsm is
    type state_type is (BANK_LSB, BANK_MSB, SEND_BET, WAIT_BANK, START_GAME, WAIT_GAME, UPDATE_BANK);
    signal state : state_type := BANK_LSB;
    signal game_selected : std_logic_vector(1 downto 0) := "00";
    signal win_reg : std_logic := '0';
begin
process(clk, rst)
begin
    if rst = '1' then
        state <= BANK_LSB;
        game_selected <= "00";
    elsif rising_edge(clk) then
        case state is
            when BANK_LSB =>
                if btn0='1' then state <= BANK_MSB;
                elsif btn1='1' then game_selected <= "01"; state <= SEND_BET;
                elsif btn2='1' then game_selected <= "10"; state <= SEND_BET;
                elsif btn3='1' then game_selected <= "11"; state <= SEND_BET;
                end if;

            when BANK_MSB =>
                if btn0='1' then state <= BANK_LSB;
                elsif btn1='1' then game_selected <= "01"; state <= SEND_BET;
                elsif btn2='1' then game_selected <= "10"; state <= SEND_BET;
                elsif btn3='1' then game_selected <= "11"; state <= SEND_BET;
                end if;

            when SEND_BET =>
                state <= WAIT_BANK;

            when WAIT_BANK =>
                if bank_bet_valid = '1' then
                    if bank_bet_ok = '1' then state <= START_GAME;
                    else state <= BANK_LSB;
                    end if;
                end if;

            when START_GAME =>
                state <= WAIT_GAME;

            when WAIT_GAME =>
                if game_done = '1' then
                    state <= UPDATE_BANK;
                    win_reg<= game_win;
                end if; -- Guardamos el valor justo a tiempo   
            when UPDATE_BANK =>
                game_selected <= "00"; 
                state <= BANK_LSB;
        end case;
    end if;
end process;
process(state, sw, bank_response, game_selected)
begin
    bank_bet_request <= (others=>'0');
    game_start_eins <= '0';
    game_start_zwei <= '0';
    game_start_drei <= '0';
    bank_game_result <= '0';
    bank_next_page <= '0';
    leds <= (others=>'0');
    bank_game_aviso <='0';
    case state is
        when BANK_LSB | BANK_MSB =>
            leds <= bank_response;
            if btn0='1' then bank_next_page <= '1'; end if;

        when SEND_BET =>
            bank_bet_request <= sw;

        when WAIT_BANK =>
            leds <= "1110";
        when START_GAME =>
            if game_selected = "01" then game_start_eins <= '1';
            elsif game_selected = "10" then game_start_zwei <= '1';
            elsif game_selected = "11" then game_start_drei <= '1';
            end if;
        when UPDATE_BANK =>
            bank_game_result <= win_reg;
            bank_game_aviso <= '1';
        when others => null;
    end case;
end process;

end Behavioral;