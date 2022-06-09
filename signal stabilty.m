# time response
sys=tf(0.01, [0.005 0.06 0.1001])
sys1=feedback(sys,1,-1)
t=0:0.01:10;
plot (step(sys1,t))
sys=tf(0.01, [0.005 0.06 0.1001])
sys1=feedback(sys,1,-1)
t=0:0.01:10;
plot (step(sys1,t))

