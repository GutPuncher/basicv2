10 SCREEN 128:I=0:INPUTA$:PRINTCHR$(147)
20 X=RND(0)*200:Y=RND(0)*180:PRINTCHR$(19);I
30 CHARX+40,Y+10,RND(0)*16,A$+STR$(I):I=I+1
40 GOTO 20