100 rem *******************************110 rem     benchmarks fuer compiler120 rem *******************************130 rem140 rem ************* 1 ** for next ***150 print"{clear}{down}ausfuehrung: 1{left}";:a1=ti160 fori=1to1000170 nexti180 e1=ti190 rem ************* 2 ** if then ****200 print"2{left}";:a2=ti210 i=0220 i=i+1230 ifi<1000then220240 e2=ti250 rem ************* 3 ** rechnen ****260 print"3{left}";:a3=ti270 fori=1to1000280 c=i+i*(i-i/i)^(i/500)290 nexti300 e3=ti310 rem ************* 4 ** gosub ******320 print"4{left}";:a4=ti330 fori=1to1000340 gosub800350 nexti360 e4=ti370 rem ************* 5 ** felder *****380 print"5{left}";:a5=ti390 dim f(1000),f$(1000)400 fori=1to1000410 f(i)=i:f$(i)="text"420 nexti430 e5=ti440 rem ************* 6 ** funktionen *450 print"6{left}";:a6=ti460 fori=1to1000470 c=sin(i):c=tan(i):c=exp(i/30):c=val(str$(i))480 nexti490 e6=ti500 rem ************* 7 ** read data **510 print"7{left}";:a7=ti520 fori=1to1000530 restore:data0540 readd550 nexti560 e7=ti570 rem ************* 8 ** sortieren **580 print"8{left}";:a8=ti590 dim s$(100)600 fori=1to100610 fork=1to10620 s$(i)=s$(i)+chr$(rnd(ti)*26+65)630 nextk640 nexti650 fori=1to99660 fork=i+1to100670 ifs$(k)>s$(i)then690680 s$(0)=s$(k):s$(k)=s$(i):s$(i)=s$(0)690 nextk,i700 e8=ti710 rem ************* 9 ** fehler ? ***720 goto 770750 fori=1to2:nexti760 rem770 remprint"warten":wait197,1:wait197,1,255780 goto900800 return900 rem ************* auswertung ******910 print"{clear}{down*3}b1:"(e1-a1)/60"sek."920 print"b2:"(e2-a2)/60"sek."930 print"b3:"(e3-a3)/60"sek."940 print"b4:"(e4-a4)/60"sek."950 print"b5:"(e5-a5)/60"sek."960 print"b6:"(e6-a6)/60"sek."970 print"b7:"(e7-a7)/60"sek."980 print"b8:"(e8-a8)/60"sek."