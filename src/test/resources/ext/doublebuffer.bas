10 GRON 640,480:BUFFERMODE 1
15 A=LOADSHAPE("src/test/resources/bin/sprite.png")
16 B=LOADSHAPE("src/test/resources/bin/sprite2.png")
20 FOR I=0TO480
21 CLEAR
25 DRAWSHAPE A,i,i
30 DRAWSHAPE B,480-i,i, 20+i/2, 20+i/2
35 FLIP
36 LIMIT 60
40 NEXTI
50 GROFF