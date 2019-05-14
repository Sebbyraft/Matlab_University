%%----------------------- Open loop Nyquist diagram ---------------------%%

figure, lnyquist(G),hold on, plot(x,D,'LineWidth',1.2,'Color',[0 0 1]);
title('Nyquist diagram','FontSize',20);
xlabel('Real axis','FontSize',16);
ylabel('Imaginary axis','FontSize',16);

%%--------------------- Closed loop Nyquist diagram ---------------------%%

% Closed loop valve
Gcc1 = feedback(G,1);
% Closed loop
Gcd = series(C,Gcc1);
Gcc = feedback(Gcd,H);

figure, lnyquist(Gcd),hold on, plot(x,D,'LineWidth',1.2,'Color',[0 0 1]);
title('Nyquist diagram','FontSize',20);
xlabel('Real axis','FontSize',16);
ylabel('Imaginary axis','FontSize',16);