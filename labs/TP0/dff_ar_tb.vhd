library IEEE;
Use IEEE.std_logic_1164.all;


entity dff_ar_tb is
end entity dff_ar_tb;


architecture testbench of dff_ar_tb is

  signal clk : std_logic;
  signal D   : std_logic;
  signal rst : std_logic;
  signal Q   : std_logic;

  constant CLK_PERIOD : time := 20 ns; --50 MHz

begin
  UUT : entity work.dff_ar
    port map (
      D   <= D,
      Q   => Q,
      clk => clk,
      rst => rst
    );


clock : process is
  begin
    clk => '0';
    wait for CLK_PERIOD/2;
    clk => '1';
    wait for CLK_PERIOD/2;
  end process clock;

reset : process is
  begin
    rst = '1'
    wait for CLK_PERIOD;
    rest='0'
    wait;
  end process reset;

stim : process is
  D=>'0';
  wait for CLK_PERIOD*2.5;
  D=>'1';
  wait for CLK_PERIOD;
  D=>'0';
  wait for CLK_PERIOD;

  wait;
end architecture behav;
