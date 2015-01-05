% S is the S(x,t)
% B is the B(x,t)
% t mean the time
% deltaT means the step length of T
% deltaX means the step length of X
% Ystep means the number of steps along Y


function [X Y Z] = cal_U(B, S, t, deltaT, deltaX, Ystep)

Xstep = 1 / deltaX;
Tstep = t / deltaT + 1;

ymax = max(S(Tstep,:));

x = 0:deltaX:1;
y = 0:(ymax/Ystep):ymax;

[X Y] = meshgrid(x, y);

[rows cols] = size(X);

for i = 1:rows
    for j = 1:cols
        Xindex = int32(X(i,j)/deltaX + 1);
        Z(i,j) = -(1 + B(Tstep, Xindex)) * ( Y(i,j) / S(Tstep, Xindex)).^2 + B(Tstep,Xindex) * (Y(i,j)/S(Tstep, Xindex)) + 1;
    end
end
end