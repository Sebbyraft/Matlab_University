close all;
clear all;
clc;
%% Diode voltage and current measures 
% Voltage
V = [220 280 430 450 500 520 610 620 690 710 715 740 790 590 580 660 600 505 560 595 410 124 470 540 565 700 695 712 720 730 732 722 734 763 752 760 770 792 800 805 820 762 750 745 735 780 765 795 742 785 825 840 845 802 783]';
% Current
I = [0.0003 0.0014 0.0346 0.0536 0.1413 0.1978 1.262 1.745 3.36 4.28 4.81 9.3 27.6 0.9 0.84 1.63 1.14 0.12 0.47 0.97 0.01 0.0001 0.0779 1.181 0.68 3.44 2.83 4.45 4.79 7.04 6.83 5.82 7.83 12.93 10.55 14.30 19.42 25.7 30.3 39.9 52.9 17.1 12.1 8.9 10.7 22.3 15.3 24.9 10.4 19.4 69.3 75.9 81.2 37.4 24.8]';

%% Data managing
V = sort(V);
I = sort(I);
% Conversione mV/mI in V/I
% mV to V and mA to A
V = V./1000;
I = I./1000;
%% Diode characteristic curve (real)
figure;
plot(V,I,'- .','LineWidth',2,'Color',[.8 0 0],'MarkerEdgeColor',[0 .6 0],'MarkerFaceColor',[0 .6 0],'MarkerSize',30); 
hold on; grid on; title("Diode characteristic curve ",'fontsize',22);
xlabel("Diode voltage [V]",'fontsize',18); 
ylabel("Diode current [A]",'fontsize',18);
ylim([0 0.085]);

%% Diode characteristic curve (ideal)
y = zeros(55,1);
x = linspace(0,0.9,55);
x1 = linspace(0,0.75,5)';
x2 = linspace(0.75,0.9,50)';
m = (0.0693)/(0.825-0.75);
y(1:5) = 0*x1;
y(6:55) = m*(x2-0.75);
x(1:5) = x1;
x(6:55) = x2;
plot(x,y,'-','LineWidth',2,'Color',[.4 .3 .8]);

legend({'real','ideal'},'fontsize',16);


