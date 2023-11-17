ENTITY SOMADOR IS
PORT (A,B,C: IN BIT;
S,C_out: OUT BIT);
END SOMADOR;

ARCHITECTURE ONE OF SOMADOR IS
SIGNAL X:BIT_VECTOR (2 DOWNTO 0);
BEGIN

	X<= A & B & C;

    WITH X SELECT
        S <= '0' WHEN "000",
             '1' WHEN "001",
             '1' WHEN "010",
             '0' WHEN "011",
             '1' WHEN "100",
             '0' WHEN "101",
             '0' WHEN "110",
             '1' WHEN "111";

    WITH X SELECT
        C_out <= '0' WHEN "000",
                '0' WHEN "001",
                '0' WHEN "010",
                '1' WHEN "011",
                '0' WHEN "100",
                '1' WHEN "101",
                '1' WHEN "110",
                '1' WHEN "111";
			  
END ONE;			  