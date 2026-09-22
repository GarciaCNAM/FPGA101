library IEEE;
Use IEEE.std_logic_1164.all;


entity dff_ar is
  port(
    D   : in  std_logic;
    Q   : out std_logic;
    clk : in  std_logic;
    rst : in  std_logic
  );
end entity dff_ar;


architecture behav of dff_ar is
begin

sync : process(rst, clk) is
  begin
    if rst = '1' then
      Q <= '0';
    elsif clk'event and clk = '1' then
      Q <= D;
    end if;
  end process sync;

end architecture behav;
