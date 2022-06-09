*/find the cmax , mp and tr tp )
wn=2*3.14*5
num=wn*wn
 den=[1 2*0.5*wn 0]
 sys =tf(num,den)
 sys1=feedback(sys,1,-1)
t=0:0.001:1;
step(sys1,t);
y=step(sys1,t);
[cmax i]=max(y)
tp=t(i)
mp=(cmax-1)*100
x=min(find(y>=1))
tr=t(x)
xs=max(find(y<=0.98 | y>=1.02))
ts=t(xs)
