10 GRON 640,480
20 FOR I=0TO100000
25 COLOR 255*RND(0), 255*RND(0), 255*RND(0):FILLMODE INT(RND(0)+.5)
30 RECT 640*RND(0), 480*RND(0), 640*RND(0), 480*RND(0)
35 PRINT "RECT:";I
40 NEXTI
50 GROFF