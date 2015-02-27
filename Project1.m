% EE3370 Project 1
% MATLAB code for plotting cos(omega*t)*sin(omega*t)*u(t-1)
% David Talley
% 2/26/2015

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = (33*pi/180); %degtorad() function not working.  Calculate radians
T=1/f;
t=linspace(-3*T,3*T,1000);
x_t=3*cos(omega*t+angle);
u_t2=heaviside(t-.001); %since T is 1/f, signal will be shifted by 1T to show on plot
subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on
subplot(4,1,2)
u_t=heaviside(t);
plot(t,u_t, 'linewidth',2);grid on
subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on
f_t=cos(omega*t).*sin(omega*t).*u_t2; %new function added
subplot(4,1,4)
plot(t,f_t, 'linewidth',2);grid on