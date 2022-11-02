 50 DIM w%(1,319)
100 x=0:y=0:x2=0:y2=0:xy=0:f=0:g=0
110 DIM d%(2,319),r(319),j(199):a%=0:b%=1:c%=2
120 r0=-1.9:r1=.5:dr=(r1-r0)/320:FOR s=0 TO 319:r(s)=r0+dr*s
130 j0=-0.10:j1=.95:dj=(j1-j0)/200:FOR t=0 TO 199:j(199-t)=j0+dj*t
140 n%=30
150 MODE 4:WINDOW 320,200,0,0:BORDER 0:PAPER 1:CLS:INK 4:ti=DATE
160 FOR t=0 TO 199
164 g=j(t):FOR s=0 TO 319
170 f=r(s):x=f:y=g:FOR i=1 to n%
174 x2=x*x:y2=y*y:IF x2+y2<4 THEN xy=x*y:x=x2-y2+f:y=2*xy+g:NEXT i
180 d%(c%,s)=i:IF i+1<=n% THEN BLOCK 1,1,s,t,4:w%(1,s)=1:ELSE w%(1,s)=0
190 IF s<2 OR t<2 THEN GOTO 280
200 IF w%(0,s-1)=0 THEN GOTO 280
210 m%=d%(b%,s-1)
220 IF d%(b%,s-2)<m% AND d%(b%,s)<m% THEN GOTO 270
230 IF d%(a%,s-2)<m% AND d%(c%,s)<m% THEN GOTO 270
240 IF d%(c%,s-2)<m% AND d%(a%,s)<m% THEN GOTO 270
250 IF d%(a%,s-1)<m% AND d%(c%,s-1)<m% THEN GOTO 270
260 GOTO 280
270 BLOCK 1,1,s-1,t-1,0
280 NEXT s:z%=a%:a%=b%:b%=c%:c%=z%:FOR x=0 TO 319
284 w%(0,x)=w%(1,x):NEXT x:NEXT t
290 ti=(DATE-ti):x=INT(ti/3600):y=INT((ti-x*3600)/60):PRINT#0,x,y,ti-x*3600-y*60

