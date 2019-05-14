%%--------------------- Closed loop Nyquist diagram ---------------------%%
figure;
plot(t,input,'LineWidth',1.2,'Color',[1 0 0]);hold on;
plot(t,output,'LineWidth',1.2,'Color',[0 0 1]);
title('Model output','FontSize',20);
xlabel('Time [s]','FontSize',16);
ylabel('Model input/ Model output','FontSize',16);
legend({'Reference','Model output'},'FontSize',16);grid on;
