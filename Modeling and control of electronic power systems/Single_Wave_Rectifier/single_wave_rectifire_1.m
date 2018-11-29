clear all;
close all;
clc;
%% Loading data
data_1 = dlmread('data_1.csv',';');
%% Time
delta = 0.001;
t = delta*length(data_1(:,1));
time = linspace(0,t,length(data_1(:,1)));

%% Single wave rectifier
figure;
plot(time,data_1(:,1),'-','LineWidth',1.3,'Color',[.1 .1 .8]); 
hold on; grid on;
plot(time,data_1(:,2),'-','LineWidth',1.3,'Color',[.8 .1 0]); 
title("Single wave rectifier with RC load (f_{Vin} \approx 0.33 [Hz])",'fontsize',22);

% "Dirty derivative" algorithm for calculating the derivative
v = data_1(:,1);
l = length(v)-2;
l2 = length(v);
y = zeros(l2,1);
tau = 0.9/(2*pi/3);

for i = 0:l
    y(i+2) = ((y(i+1)*tau)+v(i+2)-v(i+1))/(tau+delta);
end
curr = -2.7*1000.*(-(y.*(109*10^(-6))) + (v./(97.8*10^3)));
hold on;
plot(time,curr,'-','LineWidth',1.3,'Color',[1 .6 .1]);

xlabel("Time [s]",'fontsize',18); 
ylabel("Load voltage [V] / Input voltage[V] / Load current[mA]",'fontsize',18);
legend({"Rectifier output","Sinusoidal input","Load current"},'FontSize',16);

% % power factor
% kp = (0.33*(v'*(curr/(2.7*1000))))/(rms(curr/(2.7*1000))*rms(v))
% % total armonic distorsion
% THD = thd(data_1(:,2))
% 
% prod = 0;
% a = curr/(2.7*1000);
% ten = data_1(:,2);
% for i=1:length(ten)
%     prod = prod + (ten(i)*a(i));
% end
% 
% kp1 = (1/10000)*prod / (rms(prod)*rms(a))
