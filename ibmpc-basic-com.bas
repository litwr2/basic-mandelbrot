10 x=0:y=0:x2=0:y2=0:xy=0:r=0:j=0
11 DIM d%(2,319),r(319),j(199):a%=0:b%=1:c%=2
12 r0=-1.9:r1=.5:dr=(r1-r0)/320:FOR s%=0 TO 319:r(s%)=r0+dr*s%:NEXT
13 j0=-0.10:j1=.95:dj=(j1-j0)/200:FOR t%=0 TO 199:j(199-t%)=j0+dj*t%:NEXT
14 n%=30
15 SCREEN 1:KEY OFF:TIME$="0"
16 FOR t%=0 TO 199:j=j(t%):FOR s%=0 TO 319:r=r(s%):x=r:y=j
17 FOR i%=1 TO n%:x2=x*x:y2=y*y:IF x2+y2<4 THEN xy=x*y:x=x2-y2+r:y=2*xy+j:NEXT
18 d%(c%,s%)=i%:IF i%<=n% THEN PSET(s%,t%)
19 IF s%<2 OR t%<2 THEN 28
20 IF POINT(s%-1,t%-1)=0 THEN 28
21 m%=d%(b%,s%-1)
22 IF d%(b%,s%-2)<m% AND d%(b%,s%)<m% THEN 27
23 IF d%(a%,s%-2)<m% AND d%(c%,s%)<m% THEN 27
24 IF d%(c%,s%-2)<m% AND d%(a%,s%)<m% THEN 27
25 IF d%(a%,s%-1)<m% AND d%(c%,s%-1)<m% THEN 27
26 GOTO 28
27 PRESET(s%-1,t%-1)
28 NEXT s%:z%=a%:a%=b%:b%=c%:c%=z%:NEXT
29 LOCATE 2,2:PRINT TIME$
30 a$=INKEY$:IF a$="" THEN 30

