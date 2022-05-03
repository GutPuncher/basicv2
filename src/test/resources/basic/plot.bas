100 C = 1
110 GOSUB 1000 : REM ��
120 GOSUB 200 : REM ��
125 GOSUB 300 : REM ��
140 END
196 :
198 REM �� PLOT AXES
200 Y = 100
210 FOR X = 0 TO 319: GOSUB 1200: NEXT X 
220 X = 160
230 FOR Y = 0 TO 199: GOSUB 1200: NEXT Y
290 RETURN
296 :
298 REM �� DEFINE THE FUNCTION
300 DEF FNA(X) = .1*X^2 - 3*X - 57
310 GOSUB 600 : REM �� DO THE PLOT
390 RETURN
596 :
598 REM �� SCAN THE SCREEN FOR FNA(X)
600 FOR X1 = -160 TO 159
610 Y1 = FNA(X1)
620 X = 160 + X1 : Y = 100 - Y1
630 IF Y < 0 OR Y > 199 THEN 650
640 GOSUB 1200
650 NEXT X1
690 RETURN
996 :
998 REM �� BIT-MAP SCREEN SETUP
1000 POKE 53265, PEEK(53265) OR 2^5
1010 POKE 53272, PEEK(53272) OR 2^3
1020 FOR i9 = 8192 TO 16191
1030 POKE i9, 0
1040 NEXT i9
1050 FOR i9 = 1024 TO 2023
1060 POKE i9, C
1070 NEXT i9
1090 RETURN
1196 :
1198 REM ** BIT MAP PLOTTING
1200 TL = INT(Y/8): REM ** FIND TEXT LINE
1210 BL = Y AND 7: REM ** FINE BYTE WITHIN TEXT LINE
1220 CP = INT(X/8): REM ** CHARACTER POSITION
1230 MA = 8192 + TL*320 + CP*8 + BL
1240 BP = 7 - (X AND 7): REM ** FIND THE BIT POSITION
1250 POKE MA, PEEK(MA) OR 2^BP
1290 RETURN