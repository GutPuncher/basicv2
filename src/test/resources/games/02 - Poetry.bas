10 REM ** POETRY **
20 DIM AJ$(9,2),AV$(9,2):FOR I=0 TO 9
30 READ AJ$(I,0),AJ$(I,1),AJ$(I,2),AV$(I,0),AV$(I,1),AV$(I,2):NEXT
50 PRINT"{clear}";SPC(14);"** poetry **{down}";CHR$(8)
55 FL=0:MO=INT(RND(1)*3)
60 FOR I=1TO4+INT(RND(1)*4):AV=INT(RND(1)*10)
65 AJ=INT(RND(1)*10):IF AJ=AV THEN 65
70 AJ$=AJ$(AJ,MO):AV$=AV$(AV,MO)
75 ON INT(RND(1)*11+1) GOTO 80,85,90,95,100,105,110,115,120,125,130
80 PRINT"the ";AJ$;" man ";AV$;" beguiled her":GOTO 500
85 PRINT "a ";AJ$;" woman enchanted me with ";AV$;" blinking eyes":GOTO 500
90 PRINT "in ";AV$;" keeping with her ";AJ$;" vows":GOTO 500
95 PRINT "alas, she must ";AV$;" leave his ";AJ$;" presence":GOTO 500
100 PRINT "a breath of ";AJ$;" air ";AV$;" rustled in the trees":GOTO 500
105 PRINT "another ";AJ$;" day ";AV$;" ended":GOTO 500
110 PRINT "the ";AJ$;" hills marched ";AV$;" across the horizon":GOTO 500
115 PRINT "and then:":GOTO 500
120 PRINT "the ";AJ$;" bell tolled ";AV$;" once again":GOTO 500
125 PRINT "the ";AV$;" ";AJ$;" human arrived":GOTO 500
130 PRINT "life ";AV$;" dawned on the ";AJ$;" universe":GOTO 500
500 NEXT I:IF FL=0 AND RND (1)>.5 THEN FL=1:GOTO 60
505 GET A$:IF A$="n" THEN PRINT CHR$(9):END
510 IF A$="" THEN 505
515 GOTO 50
1000 DATA SORROWFUL,APPATHETIC,JOYFUL,SADLY,CARELESSLY,HAPPILLY
1005 DATA PUTRID,ODOURLESS,SCENTED,FOULLY,CAREFULLY,SWEETLY
1010 DATA BORING,ENLIGHTENING,INTERESTING,TIRELESSLY,EFFORTLESSLY,EASILY
1015 DATA UGLY,PLAIN,BEAUTIFUL,CLUMSILY,,GRACEFULLY
1020 DATA FAT,THIN,LEAN,NOISILY,QUIETLY,
1025 DATA PATHETIC,ORDINARY,SUPER,PATHETICALLY,,SUPERBLY
1030 DATA IRRITATING,CALMING,EXCITING,SHARPLY,COOLY,EXCITEDLY
1035 DATA TORTUOUS,HATING,LOVING,,CONTEMPTUOUSLY,LOVINGLY
1040 DATA DYING,LIVING,NEWLY BORN,PAINFULLY,EASILY,
1045 DATA STUPID,IGNORANT,INTELLIGENT,FOOLISHLY,,INTELLIGENTLY

