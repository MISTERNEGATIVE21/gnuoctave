# learner set basics#


pkg load control
pkg load signal
a=[1 2];
b=[1 -5];
c=[1 2 5];
d=[1 3];
num=10*conv(a,b)
den=conv(c,d)
sys=tf(num,den)
pzmap(sys)
[z p k]=tf2zp(num,den)
a=[1 2];
b=[1 -5];
c=[1 2 5];
d=[1 3];
num=5*conv(a,b)
den=conv(c,d)
sys=tf(num,den)
pzmap(sys)
[z p k]=tf2zp(num,den)
a=[1 2];
b=[1 -5];
c=[1 2 5];
d=[1 3];
num=5*conv(a,b)
den=conv(c,d)
sys=tf(num,den)
pzmap(sys)
[z p k]=tf2zp(num,den)
num=[4 16 12];
den=[12 1 0 44 48 0];
sys=tf(num,den)
pzmap(sys)
[z p k]=tf2zp(num,den)
num=[4 16 12];
den=[1 12  44 48 0];
sys=tf(num,den)
pzmap(sys)
[z p k]=tf2zp(num,den)
num=[4 16 12];
den=[1 12  44 48 0];
sys=tf(num,den)
pzmap(sys)
[z p k]=tf2zp(num,den)
a=[1 2];
b=[4 -3];
c=[1 0];
d=[1 0 -5 3];
e=[1 1];
num=2*conv(a,conv(b,c))
den=conv(d,e)
sys=tf(num,den)
pzmap(sys)
[z p k]=tf2zp(num,den)
z=[-4 3];
p=[0 -2 5];
k=3;
[num, den]=zp2tf(z,p,k)
sys=tf(num,den)

# Octave 6.4.0, Fri Apr 22 10:53:50 2022 GMT <unknown@DESKTOP-JSPBQJM>
#block reduction techniques :-
pkg load control
pkg load signal
g1=tf(1, [1 1])
g2=tf([1 2],conv[1 3],[1 4 ])
g3=tf([1 0],1)
sys1=feedback(g2 , g3,-1)
sys2=feedback(sys1,1,-1)
sys3=series(sys2,g1)
sys4=feedback(sys3, 1 ,1)
sys5=parallel(sys4,g3)
sys6=parallel(sys5,-g3)
g1=tf(1, [1 1])
g2=tf([1 2],conv[1 3],[1 4 ])
g3=tf([1 0],1)
sys1=feedback(g2 , g3,-1)
sys2=feedback(sys1,1,-1)
sys3=series(sys2,g1)
sys4=feedback(sys3, 1 ,1)
sys5=series(sys4,g3)
sys6=parallel(sys5,-g3)
g1=tf(1, [1 1])
g2=tf([1 2],conv([1 3],[1 4 ]))
g3=tf([1 0],1)
sys1=feedback(g2 , g3,-1)
sys2=feedback(sys1,1,-1)
sys3=series(sys2,g1)
sys4=feedback(sys3, 1 ,1)
sys5=series(sys4,g3)
sys6=parallel(sys5,-g3)
g1=tf(1, [1 2])
g2=tf([1 0],[1 1])
g3=tf(2,[1 0])
g4=tf(1,[1 0])
g5=tf([1,0],2)
h1=tf([3 0],1)
h2=tf([1 0 0],1)
h3=tf([1 0],1)
sys0=series(g3,g4)
sys1=feedback(sys0 , h1,-1)
sys2=feedback(sys1,series(h1,h2),-1)
sys3=feedback(sys2,g5,-1)
sys4=series(sys3,g1)
sys5=feedback(sys4,h3 ,-1)
g1=tf(1, [1 2])
g2=tf([1 0],[1 1])
g3=tf(2,[1 0])
g4=tf(1,[1 0])
g5=tf([1,0],2)
h1=tf([3 0],1)
h2=tf([1 0 0],1)
h3=tf([1 0],1)
sys1=series(g3,g4)
sys2=feedback(sys1, h1,-1)
sys3=feedback(sys2,series(h1,h2),-1)
sys4=feedback(sys3,g5,-1)
sys5=series(sys4,g1)
sys6=feedback(sys5,h3 ,-1)
g1=tf(1, [1 2])
g2=tf([1 0],[1 1])
g3=tf(2,[1 0])
g4=tf(1,[1 0])
g5=tf([1,0],2)
h1=tf([3 0],1)
h2=tf([1 0 0],1)
h3=tf([1 0],1)
sys1=series(g3,g4)
sys2=feedback(sys1, h1,-1)
sys3=series(g2,sys2)
sys4=feedback(sys3,series(h1,h2),-1)
sys5=feedback(sys4,g5,-1)
sys5=series(sys5,g1)
sys6=feedback(sys5,h3 ,-1)
g1=tf(1, [1 2])
g2=tf([1 0],[1 1])
g3=tf(2,[1 0])
g4=tf(1,[1 0])
g5=tf([1,0],2)
h1=tf([3 0],1)
h2=tf([1 0 0],1)
h3=tf([1 0],1)
sys1=series(g3,g4)
sys2=feedback(sys1, h1,-1)
sys3=series(g2,sys2)
sys4=feedback(sys3,series(h1,h2),-1)
sys5=feedback(sys4,g5,-1)
sys5=series(sys5,g1)
sys6=feedback(sys5,h3 ,-1)
g1=tf(1, [1 2])
g2=tf([1 0],[1 1])
g3=tf(2,[1 0])
g4=tf(1,[1 0])
g5=tf([1,0],1)
h1=tf([3 0],1)
h2=tf([1 0 0],1)
h3=tf([1 0],1)
sys1=series(g3,g4)
sys2=feedback(sys1, h1,-1)
sys3=series(g2,sys2)
sys4=feedback(sys3,series(h1,h2),-1)
sys5=feedback(sys4,g5,-1)
sys5=series(sys5,g1)
sys6=feedback(sys5,h3 ,-1)
g1=tf(1, [1 2])
g2=tf([1 0],[1 1])
g3=tf(2,[1 0])
g4=tf(1,[1 0])
g5=tf([1,0],1)
h1=tf([3 0],1)
h2=tf([1 0 0],1)
h3=tf([1 0],1)
sys1=series(g3,g4)
sys2=feedback(sys1, h1,-1)
sys3=series(g2,sys2)
sys4=feedback(sys3,series(h1,h2),-1)
sys5=feedback(sys4,g5,-1)
sys5=series(sys5,g1)
sys6=feedback(sys5,h3 ,-1)
# Octave 6.4.0, Wed Apr 27 11:56:52 2022 GMT <unknown@DESKTOP-JSPBQJM>
# Octave 6.4.0, Fri Apr 29 09:16:44 2022 GMT <unknown@DESKTOP-JSPBQJM>


pkg load control
pkg load signal
G1=tf(1, [1 1]);
G2=tf([1 0], [1 0 2]);
G3=tf(1 , [1 0 0]);
G4=tf([4 2] , [1 2 1]);
G5=tf([1 0 2] , [1 0 0 14]);
sys1=series(G1,G2);
sys2=parallel(G3,50);
sys3=feedback(sys1,G4,-1);
sys4=series(sys3,sys2);
sys5=feedback(sys4,G5,-1);
sys6=series(4,sys5)
G1=tf(1, [1 1]);
G2=tf([1 0], [1 0 2]);
G3=tf(1 , [1 0 0]);
G4=tf([4 2] , [1 2 1]);
G5=tf([1 0 2] , [1 0 0 14]);
sys1=series(G1,G2);
sys2=feedback(G3,50,1);
sys3=feedback(sys1,G4,-1);
sys4=series(sys3,sys2);
sys5=feedback(sys4,G5,-1);
sys6=series(4,sys5)
G1=tf(1, [1 1 0]);
G2=tf(1, [1 2 0]);
G3=tf(1, [1 1 1]);
G4=tf(1, [1 0]);
sys1=parallel(G3,-G4);
sys2=feedback(G2,G3,1);
sys3=series(G1,series(sys1,sys2));
sys4=parallel(sys3,G2)
G1=tf([1 0], [2 5]);
G2=tf(1, [1 7]);
G3=tf([2 0], [1 3]);
G4=tf([1 0 0],1);
sys1=feedback(G2,G4,1);
sys2=series(G1,sys1);
sys3=feedback(sys2,G4,-1);
sys4=parallel(G3,sys3)


#Time response and step annalysis


# Octave 6.4.0, Thu May 05 11:34:53 2022 GMT <unknown@DESKTOP-JSPBQJM>
pkg load control
pkg load signal
sys=tf(1, [10 8]);
t=0:0.01:10;
subplot(3,1,1)
step(sys,t)
subplot(3,1,2)
impulse(sys,t)
subplot(3,1,3)
u=t;
lsim(sys,u,t)
y=step(sys,t);
ssout=max(y)
x2=min(find(y>=ssout*0.9))
x1=min(find(y>=ssout*0.1))
t2=t(x2)
t1=t(x1)
tr=t2-t1
sys=tf(1, [10 8]);
t=0:0.01:10;
subplot(3,1,1)
step(sys,t)
subplot(3,1,2)
impulse(sys,t)
subplot(3,1,3)
u=t;
lsim(sys,u,t)
y=step(sys,t);
ssout=max(y)
x2=min(find(y>=ssout*0.9))
x1=min(find(y>=ssout*0.1))
t2=t(x2)
t1=t(x1)
tr=t2-t1
sys=tf(1, [10 8]);
t=0:0.01:10;
subplot(3,1,1)
step(sys,t)
subplot(3,1,2)
impulse(sys,t)
subplot(3,1,3)
u=t;
lsim(sys,u,t)
y=step(sys,t);
ssout=max(y)
x2=min(find(y>=ssout*0.9))
x1=min(find(y>=ssout*0.1))
t2=t(x2)
t1=t(x1)
tr=t2-t1
sys=tf(1, [10 8]);
t=0:0.01:10;
subplot(3,1,1)
step(sys,t)
subplot(3,1,2)
impulse(sys,t)
subplot(3,1,3)
u=t;
lsim(sys,u,t)
y=step(sys,t);
ssout=max(y)
x2=min(find(y>=ssout*0.9))
x1=min(find(y>=ssout*0.1))
t2=t(x2)
t1=t(x1)
tr=t2-t1
sys=tf(1, [10 8]);
t=0:0.01:10;
subplot(3,1,1)
step(sys,t)
subplot(3,1,2)
impulse(sys,t)
subplot(3,1,3)
u=t;
lsim(sys,u,t)
y=step(sys,t);
ssout=max(y)
x2=min(find(y>=ssout*0.9))
x1=min(find(y>=ssout*0.1))
t2=t(x2)
t1=t(x1)
tr=t2-t1
sys=tf(25, [1 4 25]);
t=0:0.01:10;
subplot(3,1,1)
step(sys,t)
subplot(3,1,2)
impulse(sys,t)
subplot(3,1,3)
u=t;
lsim(sys,u,t)
y=step(sys,t);
[cmax i]=max(y)
tp=t(i)
mp=(cmax-1)*100
x=min(find(y>=1))
tr=t(x)
xs=max(find(y<=0.98 | y>=1.02))
ts=t(xs)

