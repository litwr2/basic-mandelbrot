 9 p=0:a$="":m%=0:z%=0:i%=0:DIM w(9)
10 x=0:y=0:x2=0:y2=0:xy=0:r=0:j=0
11 DIM d%(2,319),r(319),j(199):a%=0:b%=1:c%=2
12 r0=-1.9:r1=.5:dr=(r1-r0)/320:FOR s%=0 TO 319:r(s%)=r0+dr*s%:NEXT
13 j0=-0.10:j1=.95:dj=(j1-j0)/200:FOR t%=0 TO 199:j(199-t%)=j0+dj*t%:NEXT
14 n%=30
15 GOSUB 70
16 FOR t%=0 TO 199:j=j(t%):FOR s%=0 TO 319:r=r(s%):x=r:y=j
17 FOR i%=1 TO n%:x2=x*x:y2=y*y:IF x2+y2<4 THEN xy=x*y:x=x2-y2+r:y=2*xy+j:NEXT
18 d%(c%,s%)=i%:IF i%<=n% THEN PSET(s%,t%),2
19 IF s%<2 OR t%<2 THEN 28
20 IF POINT(s%-1,t%-1)=0 THEN 28
21 m%=d%(b%,s%-1)
22 IF d%(b%,s%-2)<m% AND d%(b%,s%)<m% THEN 27
23 IF d%(a%,s%-2)<m% AND d%(c%,s%)<m% THEN 27
24 IF d%(c%,s%-2)<m% AND d%(a%,s%)<m% THEN 27
25 IF d%(a%,s%-1)<m% AND d%(c%,s%-1)<m% THEN 27
26 GOTO 28
27 PSET(s%-1,t%-1),1
28 NEXT s%:z%=a%:a%=b%:b%=c%:c%=z%:NEXT
29 GOSUB 90:p=(PEEK(p+31)+PEEK(p+32)*256.0+PEEK(p+33)*65536.0)/60
30 x=INT(p/3600):y=INT((p-x*3600)/60)
31 OPEN"GRP:"AS 1:PSET(9,9):PRINT#1,x;y;p-x*3600-y*60
32 a$=INKEY$:IF a$="" THEN 32
33 SCREEN 0:END
40 DATA 245,229,205,5,80,225,125,198,26,111
41 DATA 124,206,0,103,126,198,1,119,35,126,206,0,119,35
42 DATA 126,206,0,119,225,241,201,0,0,0
70 SCREEN 6:p=VARPTR(w(0)):x=p:if x<0 then x=x+65536
71 FOR t%=0 TO 33:READ s%:POKE p+t%,s%:NEXT
72 POKE p+4,INT((x+5)/256):POKE p+3,(p+5)AND 255
81 POKE&Hfd9b,p AND&HFF:POKE&Hfd9c,INT(x/256):POKE&Hfd9a,195:RETURN
90 POKE&Hfd9a,201:RETURN

