ENTITY somador_clk IS
PORT (in_clk: IN bit;
out_clk: OUT bit);
END somador_clk;

ARCHITECTURE master OF somador_clk IS
SIGNAL X:bit;
SIGNAL y: integer range 0 to 4999999:=0;
BEGIN
PROCESS (in_clk)
BEGIN
if (in_clk 'event) and (in_clk='1') then

if y=4999999 then
	y<=0;
	x<= not x;
	else
	y<=y+1;
end if;
	
end if;
end process;
out_clk<=x;

END master;
		  