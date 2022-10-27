10 x=0:y=0:x2=0:y2=0:xy=0:r=0:j=0
11 DIM d(2,319),r(319),j(199):a=0:b=1:c=2
12 r0=-1.9:r1=.5:dr=(r1-r0)/320:FOR s%=0 TO 319:r(s%)=r0+dr*s%:NEXT
13 j0=-0.10:j1=.95:dj=(j1-j0)/200:FOR t%=0 TO 199:j(199-t%)=j0+dj*t%:NEXT
14 n=30
15 MODE 1:time0=TIME
16 FOR t%=0 TO 199:j=j(t%):FOR s%=0 TO 319:r=r(s%):x=r:y=j
17 FOR i=1 TO n:x2=x*x:y2=y*y:IF x2+y2<4 THEN xy=x*y:x=x2-y2+r:y=2*xy+j:NEXT
18 d(c,s%)=i:IF i<=n THEN:PLOT s%+s%,400-t%-t%,1
19 IF s%<2 OR t%<2 THEN 28
20 IF TEST(s%+s%-2,402-t%-t%)=0 THEN 28
21 m=d(b,s%-1)
22 IF d(b,s%-2)<m AND d(b,s%)<m THEN 27
23 IF d(a,s%-2)<m AND d(c,s%)<m THEN 27
24 IF d(c,s%-2)<m AND d(a,s%)<m THEN 27
25 IF d(a,s%-1)<m AND d(c,s%-1)<m THEN 27
26 GOTO 28
27 PLOT s%+s%-2,402-t%-t%,0
28 NEXT s%:z=a:a=b:b=c:c=z:NEXT:clk=(TIME-time0)/300:hours=INT(clk/3600):mins=INT(clk/60-hours*60)
29 a$=INKEY$:IF a$="" THEN 29
30 CLS:PRINT hours;mins;INT(clk-hours*3600-mins*60)
