10  REM - DAS RAHMENPROGRAMM
100 INPUT "FAKULTÄT VON";FA
105 IF FA=0 THEN END
110 GOSUB 1000
120 PRINT " FAKTORIELLE VON ";FA;"=";FR
130 GOTO 100
1000 REM UNTERPROGRAMM FAKT(FA) -> FR - VERWENDET: I
1010 FR=1: I=1           : REM INITIALISIERUNG
1020 IF I>FA THEN RETURN : REM ABBRUCHBEDINGUNG
1030 FR=FR*I             : REM EIN BERECHNUNGSSCHRITT
1040 I=I+1
1050 GOSUB 1020          : REM REKURSION!
1060 RETURN