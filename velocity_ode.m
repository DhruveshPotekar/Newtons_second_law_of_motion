clear all
close all
clc

t = [0 5];
%y0 has two values, first one is initial condition for displacment and second one is for velcity
y0 = [0 1];

%ode45 is a ODE solver. 
%Syntax[t,y] = ode45(odefun,tspan,y0), where tspan = [t0 tf], integrates the system of differential equations y'=f(t,y) from t0 to tf with initial conditions y0.
%The ode45 can only solve a first order ODE.
%Therefore to solve a higher order ODE, the ODE has to be first converted to a set of first order ODEs.
 
[t,y] = ode45('odefun_second_order',t,y0);

%figure for displacement
figure('Name','Displacement_vs_Time','NumberTitle','off')

plot(t,y(:,1),'-','color','r','LineWidth',2);

xlabel('Time','FontSize',12,'FontWeight','bold')
ylabel('Displacement','FontSize',12,'FontWeight','bold')

%figure for velocity
figure('Name','Velocity_vs_Time','NumberTitle','off')

plot(t,y(:,2),'-','color','b','LineWidth',2);

xlabel('Time','FontSize',12,'FontWeight','bold')
ylabel('Velocity','FontSize',12,'FontWeight','bold')


velocity = y(:,2);
%Slope is nothing but accleration
Slope = diff(velocity)./diff(t);

time = linspace(0,5,length(Slope));
%time = (time)';

%figure for accleration
figure('Name','Accleration_vs_Time','NumberTitle','off')

plot(time,round(Slope,3),'color','g','Linewidth',2);

xlabel('Time','FontSize',12,'FontWeight','bold')
ylabel('Accleration','FontSize',12,'FontWeight','bold')
