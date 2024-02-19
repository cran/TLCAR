p=0.5
y=1
alpha=1
a=2
b=0
theta=4
m=1
n=10
data(ConductorFailureTimes)
dTLCAR(y,alpha,a,b,theta,m)
cTLCAR(y,alpha,a,b,theta,m)
ploTLCAR(x=seq(-2,10,by=0.01),alpha,a,b,theta,m,type = "cdf")
qTLCAR(p,alpha,a,b,theta,m)
rTLCAR(n,alpha,a,b,theta,m)
fTLCAR(ConductorFailureTimes)
sTLCAR(ConductorFailureTimes)
