clear;
close all;
clc;

Xstep = 10;
Tstep = 1000;

deltaX = 1 / Xstep;
deltaT = 1 / Tstep;

tic;

%% S(x, 0) = g1(x)
b1 = -ones(1, Xstep+1);
s1 = g1((0:Xstep) * deltaX);
[S1 B1] = stefan_cal(deltaX, deltaT, Xstep, Tstep, s1, b1);
format short
disp(['.........................................................................................']);
disp(['.........................................................................................']);
disp(['s(0.05, 0) of g1:' num2str(1e4*S1(51,1))  '|| s(0.05, 1) of g1:' num2str(1e4*S1(51,11))]);
disp(['s(0.10, 0) of g1:' num2str(1e4*S1(101,1)) '|| s(0.05, 1) of g1:' num2str(1e4*S1(101,11))]);
disp(['s(0.15, 0) of g1:' num2str(1e4*S1(151,1)) '|| s(0.05, 1) of g1:' num2str(1e4*S1(151,11))]);
disp(['s(0.20, 0) of g1:' num2str(1e4*S1(201,1)) '|| s(0.05, 1) of g1:' num2str(1e4*S1(201,11))]);
disp(['s(0.25, 0) of g1:' num2str(1e4*S1(251,1)) '|| s(0.05, 1) of g1:' num2str(1e4*S1(251,11))]);
disp(['s(0.30, 0) of g1:' num2str(1e4*S1(301,1)) '|| s(0.05, 1) of g1:' num2str(1e4*S1(301,11))]);
disp(['s(0.35, 0) of g1:' num2str(1e4*S1(351,1)) '|| s(0.05, 1) of g1:' num2str(1e4*S1(351,11))]);
disp(['s(0.40, 0) of g1:' num2str(1e4*S1(401,1)) '|| s(0.05, 1) of g1:' num2str(1e4*S1(401,11))]);
disp(['.........................................................................................']);

figure
plot(S1(51,:) ,'r*');hold on;plot(S1(51,:))
plot(S1(101,:),'ro');hold on;plot(S1(101,:))
plot(S1(151,:),'rx');hold on;plot(S1(151,:))
plot(S1(201,:),'rs');hold on;plot(S1(201,:))
plot(S1(251,:),'rd');hold on;plot(S1(251,:))
plot(S1(301,:),'rv');hold on;plot(S1(301,:))
plot(S1(351,:),'r<');hold on;plot(S1(351,:))
plot(S1(401,:),'r>');hold on;plot(S1(401,:))
title('g1(x)')


%% S(x, 0) = g2(x)
b2 = -ones(1, Xstep+1);
s2 = g2((0:Xstep) * deltaX);
[S2 B2] = stefan_cal(deltaX, deltaT, Xstep, Tstep, s2, b2);
disp(['.........................................................................................']);
disp(['s(0.05, 0) of g2:' num2str(1e4*S2(51,1))  '|| s(0.05, 1) of g2:' num2str(1e4*S2(51,11))]);
disp(['s(0.10, 0) of g2:' num2str(1e4*S2(101,1)) '|| s(0.05, 1) of g2:' num2str(1e4*S2(101,11))]);
disp(['s(0.15, 0) of g2:' num2str(1e4*S2(151,1)) '|| s(0.05, 1) of g2:' num2str(1e4*S2(151,11))]);
disp(['s(0.20, 0) of g2:' num2str(1e4*S2(201,1)) '|| s(0.05, 1) of g2:' num2str(1e4*S2(201,11))]);
disp(['s(0.25, 0) of g2:' num2str(1e4*S2(251,1)) '|| s(0.05, 1) of g2:' num2str(1e4*S2(251,11))]);
disp(['s(0.30, 0) of g2:' num2str(1e4*S2(301,1)) '|| s(0.05, 1) of g2:' num2str(1e4*S2(301,11))]);
disp(['s(0.35, 0) of g2:' num2str(1e4*S2(351,1)) '|| s(0.05, 1) of g2:' num2str(1e4*S2(351,11))]);
disp(['s(0.40, 0) of g2:' num2str(1e4*S2(401,1)) '|| s(0.05, 1) of g2:' num2str(1e4*S2(401,11))]);
disp(['.........................................................................................']);

figure
plot(S2(51,:) ,'r*');hold on;plot(S2(51,:))
plot(S2(101,:),'ro');hold on;plot(S2(101,:))
plot(S2(151,:),'rx');hold on;plot(S2(151,:))
plot(S2(201,:),'rs');hold on;plot(S2(201,:))
plot(S2(251,:),'rd');hold on;plot(S2(251,:))
plot(S2(301,:),'rv');hold on;plot(S2(301,:))
plot(S2(351,:),'r<');hold on;plot(S2(351,:))
plot(S2(401,:),'r>');hold on;plot(S2(401,:))
title('g2(x)')

%% S(x, 0) = g3(x)
b3 = -ones(1, Xstep+1);
s3 = g3((0:Xstep) * deltaX);
[S3 B3] = stefan_cal(deltaX, deltaT, Xstep, Tstep, s3, b3);
disp(['.........................................................................................']);
disp(['s(0.05, 0) of g3:' num2str(1e4*S3(51,1))  '|| s(0.05, 1) of g3:' num2str(1e4*S3(51,11))]);
disp(['s(0.10, 0) of g3:' num2str(1e4*S3(101,1)) '|| s(0.05, 1) of g3:' num2str(1e4*S3(101,11))]);
disp(['s(0.15, 0) of g3:' num2str(1e4*S3(151,1)) '|| s(0.05, 1) of g3:' num2str(1e4*S3(151,11))]);
disp(['s(0.20, 0) of g3:' num2str(1e4*S3(201,1)) '|| s(0.05, 1) of g3:' num2str(1e4*S3(201,11))]);
disp(['s(0.25, 0) of g3:' num2str(1e4*S3(251,1)) '|| s(0.05, 1) of g3:' num2str(1e4*S3(251,11))]);
disp(['s(0.30, 0) of g3:' num2str(1e4*S3(301,1)) '|| s(0.05, 1) of g3:' num2str(1e4*S3(301,11))]);
disp(['s(0.35, 0) of g3:' num2str(1e4*S3(351,1)) '|| s(0.05, 1) of g3:' num2str(1e4*S3(351,11))]);
disp(['s(0.40, 0) of g3:' num2str(1e4*S3(401,1)) '|| s(0.05, 1) of g3:' num2str(1e4*S3(401,11))]);
disp(['.........................................................................................']);
disp(['.........................................................................................']);

figure
plot(S3(51,:) ,'r*');hold on;plot(S3(51,:))
plot(S3(101,:),'ro');hold on;plot(S3(101,:))
plot(S3(151,:),'rx');hold on;plot(S3(151,:))
plot(S3(201,:),'rs');hold on;plot(S3(201,:))
plot(S3(251,:),'rd');hold on;plot(S3(251,:))
plot(S3(301,:),'rv');hold on;plot(S3(301,:))
plot(S3(351,:),'r<');hold on;plot(S3(351,:))
plot(S3(401,:),'r>');hold on;plot(S3(401,:))
title('g3(x)')

%--------------------------------------------------------------------------------------------------%
%                   calculate U(x,y,t) = -(1+B)*(y/s)^2 + B * (y/s)"2 + 1;                         %
%--------------------------------------------------------------------------------------------------%

figure;
Ystep = 20;
[X Y Z] = cal_U(B1, S1, 0.05, deltaT, deltaX, Ystep);
mesh(X,Y,Z)
title('g1(x)')

figure;
Ystep = 20;
[X Y Z] = cal_U(B2, S2, 0.05, deltaT, deltaX, Ystep);
mesh(X,Y,Z)
title('g2(x)')

figure;
Ystep = 20;
[X Y Z] = cal_U(B2, S2, 0.05, deltaT, deltaX, Ystep);
mesh(X,Y,Z)
title('g3(x)')


toc;