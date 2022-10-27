5 rem for the commodore 16/+4/128
10 x=0:y=0:x2=0:y2=0:xy=0:r=0:j=0
11 dimd(2,319),r(319),j(199):a=0:b=1:c=2
12 r0=-1.9:r1=+0.5:dr=(r1-r0)/320:fors=0to319:r(s)=r0+dr*s:next
13 j0=-0.10:j1=+0.95:dj=(j1-j0)/200:fort=0to199:j(199-t)=j0+dj*t:next
14 n=30
15 color0,1:color1,4:graphic 1:ti$="000000":scnclr
16 fort=0to199:j=j(t):fors=0to319:r=r(s):x=r:y=j
17 fori=1ton:x2=x*x:y2=y*y:ifx2+y2<4thenxy=x*y:x=x2-y2+r:y=2*xy+j:next
18 d(c,s)=i:ifi<=nthen:draw 1,s,t
19 ifs<2ort<2then28
20 locate s-1,t-1:if rdot(2)=0then28
21 m=d(b,s-1)
22 ifd(b,s-2)<mandd(b,s)<mthen27
23 ifd(a,s-2)<mandd(c,s)<mthen27
24 ifd(c,s-2)<mandd(a,s)<mthen27
25 ifd(a,s-1)<mandd(c,s-1)<mthen27
26 goto28
27 draw 0
28 nexts:z=a:a=b:b=c:c=z:next:printti:clk$=ti$
29 getkeya$:graphic0:printclk$
