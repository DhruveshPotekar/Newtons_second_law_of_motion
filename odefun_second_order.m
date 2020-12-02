function [ydot] = odefun_second_order(t,y)

%Force in Newton(N) 
F = 1;

%mass in kg
m = 1.5;
ydot = zeros(2,1);

%displacement
ydot(1) = y(2);
%velocity
ydot(2) = F/m;
end
