ENTITY FMS_Prova IS
PORT(CLK: IN BIT;
OUT_C1, OUT_C2, OUT_C3: OUT BIT;
IN_S1, IN_S2: IN BIT;
DISPLAY_0: OUT BIT_VECTOR ( 6 DOWNTO 0));
END FMS_Prova;

ARCHITECTURE ONE OF FMS_Prova IS 
SIGNAL AUX_CLK_TO_FSM: BIT;
SIGNAL AUX_FMS_TO_DEC: INTEGER RANGE 0 TO 7;

COMPONENT Divisor_CLK IS
PORT(IN_CLK: IN BIT;
OUT_CLK: OUT BIT);
END COMPONENT;

COMPONENT FMS IS
PORT(IN_CLK,S1,S2: IN BIT;
C1, C2, C3: OUT BIT;
DISPLAY_fms: OUT INTEGER RANGE 0 TO 7);
END COMPONENT;

COMPONENT DECO_7_SEG IS
PORT ( IND_DEC: IN INTEGER RANGE 0 TO 7;
DISPLAY_7_SEG: OUT BIT_VECTOR (6 DOWNTO 0));
END COMPONENT;

BEGIN

CHIP1: Divisor_CLK PORT MAP(IN_CLK=> CLK, OUT_CLK=>AUX_CLK_TO_FSM);
CHIP2: FMS PORT MAP (IN_CLK=> AUX_CLK_TO_FSM, C1=>OUT_C1, C2=>OUT_C2, C3=>OUT_C3, S1=>IN_S1, S2=>IN_S2, DISPLAY_fms => AUX_FMS_TO_DEC);
CHIP3: DECO_7_SEG PORT MAP(IND_DEC=>AUX_FMS_TO_DEC, DISPLAY_7_SEG=>DISPLAY_0);
END ONE;

ARCHITECTURE ONE OF Divisor_CLK IS
SIGNAL X: BIT;
SIGNAL Y: INTEGER RANGE 0 TO 4999999:=0;
BEGIN
PROCESS(IN_CLK)
BEGIN
IF (IN_CLK 'EVENT) AND (IN_CLK='1') THEN
	IF Y= 4999999 THEN
	Y<=0;
	X<=NOT (X);
	ELSE
	Y<=Y+1;
	END IF;
END IF;
END PROCESS;
OUT_CLK<=X;
END ONE;


ENTITY FMS IS 
PORT(IN_CLK,S1,S2: IN BIT;
C1, C2, C3: OUT BIT;
DISPLAY_fms: OUT INTEGER RANGE 0 TO 7);
END FMS;

ARCHITECTURE ONE OF FMS IS
TYPE STATE IS (EST_H1,EST_GB,EST_H2,EST_PA,EST_H3,EST_H4,EST_H5,EST_GP);
SIGNAL AUX: STATE;
BEGIN
PROCESS(IN_CLK)
BEGIN
IF (IN_CLK'EVENT)AND(IN_CLK='1') THEN
	CASE AUX IS
	WHEN EST_GP =>
	IF (S1='0' AND S2='1') THEN
	AUX <= EST_H1;
	ELSIF (S1='0' AND S2='0') THEN
	AUX <= EST_H4;
	ELSE 
	AUX <= EST_GP;
	END IF;
	
	WHEN EST_H1 => 
	AUX <= EST_GB;

	WHEN EST_H4 =>
	AUX <= EST_PA;

	WHEN EST_GB =>
	IF (S1='0' AND S2='0') THEN
	AUX <= EST_H2;
	ELSIF (S1='1') THEN
	AUX <= EST_H5;
	ELSE 
	AUX <= EST_GB;
	END IF;
	
	WHEN EST_H2 =>
	AUX<= EST_PA;
	
	WHEN EST_PA =>
	IF (S1='1') THEN
	AUX<= EST_H3;
	ELSE 
	AUX <= EST_PA;
	END IF;
	
	WHEN EST_H3 =>
	AUX <= EST_GP;
	
	WHEN EST_H5 =>
	AUX <= EST_GP;
	
END CASE;
END IF;
END PROCESS;
	
WITH AUX SELECT
	C1<= '1' WHEN EST_GP,
		  '1' WHEN EST_H1,
		  '1' WHEN EST_H4,
		  '0' WHEN OTHERS;
		  
WITH AUX SELECT
   C2<= '1' WHEN EST_H5,
		  '1' WHEN EST_H2,
		  '1' WHEN EST_GB,
		  '0' WHEN OTHERS;
		  
WITH AUX SELECT  
   C3<= '1' WHEN EST_H1,
		  '1' WHEN EST_H4,
		  '1' WHEN EST_GP,
		  '0' WHEN OTHERS;	
		
WITH AUX SELECT
DISPLAY_fms<=     0	WHEN EST_GP, 	 
						1	WHEN EST_H1,
						2 	WHEN EST_GB,
						3	WHEN EST_H5,
						4	WHEN EST_H2,
			      	5	WHEN EST_PA,		
						6	WHEN EST_H3,
						7	WHEN EST_H4; 
								

END ONE;

ENTITY DECO_7_SEG IS
PORT ( IND_DEC: IN INTEGER RANGE 0 TO 7;
DISPLAY_7_SEG: OUT BIT_VECTOR (6 DOWNTO 0));
END DECO_7_SEG; 

ARCHITECTURE ONE OF DECO_7_SEG IS
BEGIN
WITH IND_DEC SELECT 
	DISPLAY_7_SEG <=  "0011000" WHEN 0,
							"1001111" WHEN 1,
							"1100000" WHEN 2,
							"0100100" WHEN 3,
							"0010010" WHEN 4,
							"0001000" WHEN 5,
							"0000110" WHEN 6,
							"1001100" WHEN 7;
							
END ONE;

ENTITY Divisor_CLK IS
PORT(IN_CLK: IN BIT;
OUT_CLK: OUT BIT);
END Divisor_CLK;			  
			  
			  