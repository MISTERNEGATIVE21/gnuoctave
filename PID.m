# PID SIGNAL
sys=tf(0.01, [0.005 0.06 0.1001])
sys1=feedback(sys,1,-1)
t=0:0.01:10;
plot (step(sys1,t))
sys=tf(0.01, [0.005 0.06 0.1001])
sys1=feedback(sys,1,-1)
t=0:0.01:10;
plot (step(sys1,t))
u=t;
lsim(sys,u,t)
y=step(sys,t);
ssout=max(y)
x2=min(find(y>=ssout*0.9))
x1=min(find(y>=ssout*0.1))
t2=t(x2)
t1=t(x1)
tr=t2-t1

