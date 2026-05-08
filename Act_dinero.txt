library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity banco is
    Port (
        clk : in  std_logic;
        rst : in  std_logic;
        bank_game_result : in  std_logic;
        bank_game_aviso : in std_logic;
        bank_bet_request : in  std_logic_vector(3 downto 0);
        bank_next_page : in  std_logic;
        bank_response : out std_logic_vector(3 downto 0);
        bank_bet_valid : out std_logic;
        bank_bet_ok : out std_logic
    );
end banco;

architecture Behavioral of banco is
    type state_type is (IDLE,  CONFIRMAR, ACTUALIZAR);
    signal state : state_type;
    constant dinero_ini : unsigned(7 downto 0) := to_unsigned(100, 8);
    signal dinero : unsigned(7 downto 0):= to_unsigned(100,8);
    signal bank_bet_request_unsigned : unsigned(3 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '1' then
            state  <= IDLE;
            dinero <= dinero_ini;
            bank_bet_valid <= '0';
            bank_bet_ok <= '0';
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    bank_bet_valid <= '0';
                    bank_bet_ok <= '0';
                    bank_bet_request_unsigned <= unsigned(bank_bet_request);
                    state <= CONFIRMAR;
                when CONFIRMAR =>
                    if bank_bet_request_unsigned = 0 then
                        bank_bet_valid <= '1';
                        bank_bet_ok <= '0';
                        state <= IDLE;

                    elsif dinero >= resize(bank_bet_request_unsigned, 8) then
                        bank_bet_valid <= '1';
                        bank_bet_ok <= '1';
                        state <= ACTUALIZAR;

                    else
                        bank_bet_valid <= '1';
                        bank_bet_ok <= '0';
                        state <= IDLE;
                    end if;
                when ACTUALIZAR =>
                if bank_game_aviso='1' then
                    if bank_game_result = '1' then
                        dinero <= dinero + resize(bank_bet_request_unsigned, 8);
                        state <= IDLE;
                    elsif bank_game_result = '0' then
                        dinero <= dinero - resize(bank_bet_request_unsigned, 8);
                        state <= IDLE;
                    end if;
                end if;
            end case;
        end if;
    end process;
bank_response <= std_logic_vector(dinero(7 downto 4)) when bank_next_page = '1' else
              std_logic_vector(dinero(3 downto 0));
end Behavioral;