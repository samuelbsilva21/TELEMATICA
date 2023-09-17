
ENTITY DIV_CLK IS
PORT(IN_CLK: IN BIT;
OUT_CLK: OUT BIT);
END DIV_CLK;

ARCHITECTURE ONE OF DIV_CLK IS
SIGNAL X: BIT;
SIGNAL Y: INTEGER RANGE 0 TO 11:=0;
BEGIN
PROCESS(IN_CLK)
BEGIN
IF (IN_CLK 'EVENT) AND (IN_CLK='1') THEN
	IF Y= 11 THEN
	Y<=0;
	X<=NOT (X);
	ELSE
	Y<=Y+1;
	END IF;
END IF;
END PROCESS;
OUT_CLK<=X;
END ONE;