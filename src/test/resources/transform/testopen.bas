1 gosub 1000
5 print"scratching files...":open1,8,15,"s:test*":close1
6 inputa$,b$:printa$,b$:gosub 1000
10 print"writing...":open1,8,10,"test2,seq,w":a=65.331
15 print#1,"troet","yeah";tab(5);"5";spc(5);"5":print#1,chr$(111);spc(3),a
20 close1:print"done!";spc(5);"!":gosub 1000
21 open1,8,10,"testnum,seq,w":print#1,12:print#1,12.33;
22 print#1,33.44;223:close1:gosub 1000
30 print"reading"
40 open2,8,10,"test2,seq,r":a$=""
50 fori=0to5:get#2,b$:a$=a$+b$:next
51 print"a":input#2,c$,d$:print"b"
60 close2:printa$:printc$:printd$:gosub 1000
70 print "done!",23.33;334:end
1000 open1,8,15
1010 input#1,a,b$,c,d
1020 close1
1030 printa;b$;c;d:print"{down}":return
