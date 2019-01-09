% 
% subplot(5,5, [1,6])
% h1=histogram(damped_amp);
% h1.FaceColor = [1 0 0.1];
% legend ({'Goldbeter'});
% ylabel('Frequency', 'FontSize', 14);
% xlabel('Amplitude', 'Fontsize', 14);
% subplot(5,5, [2,7])
% histogram(damped_amps)
% ylabel('Frequency', 'FontSize', 14);
% legend ({'Gonze'});
% xlabel('Amplitude', 'Fontsize', 14);
% 
% subplot(5,5, [16,21])
% h2=histogram(sustained_amp);
% h2.FaceColor = [1 0 0.1];
% ylabel('Frequency', 'FontSize', 14);
% xlabel('Amplitude', 'Fontsize', 14);
% 
% subplot(5,5, [17,22])
% histogram(sustained_amps)
% ylabel('Frequency', 'FontSize', 14);
% xlabel('Amplitude', 'Fontsize', 14);
% 
% subplot(5,5, [3,8])
% 
% h3=histogram(library_damped(74, :));
% ylabel('Frequency', 'FontSize', 14);
% xlabel('Period', 'Fontsize', 14);
% 
% h3.FaceColor = [1 0 0.1];
% 
% subplot(5,5, [4 9])
% histogram(damped_periods)
% ylabel('Frequency', 'FontSize', 14);
% xlabel('Period', 'Fontsize', 14);
% 
% subplot(5,5, [18 23])
% h4=histogram(library_sustained(74, :));
% h4.FaceColor = [1 0 0.1];
% ylabel('Frequency', 'FontSize', 14);
% xlabel('Period', 'Fontsize', 14);
% 
% subplot(5,5, [19 24])
% histogram(sustained_periods)
% ylabel('Frequency', 'FontSize', 14);
% xlabel('Period', 'Fontsize', 14);

% x = 0:0.1:1;
% subplot(1,4, 1)
% plot(x,data_fan(:,1),'-ks' )
% hold on;
% plot(x,data_fan(:,2),'-ro' )
% hold on;
% plot(x,data_fan(:,3),'-b>' )
% ylabel('FRP (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Poincare Model', 'FontSize', 16)
% ylim([20 39])
% legend({'g = 0.05', 'g= 0.1', 'g= 0.15'}, 'FontSize', 14);
% 
% subplot(1,4, 2)
% plot(x,fig1A_jay(:,1),'-ks' )
% hold on;
% plot(x,fig1A_jay(:,2),'-ro' )
% hold on;
% plot(x,fig1A_jay(:,3),'-b>' )
% ylabel('FRP (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Phase-Amplitude Model', 'FontSize', 16)
% ylim([20 39])
% legend({'g = 0.2', 'g= 0.4', 'g= 0.6'}, 'FontSize', 14);
% 
% subplot(1,4, 3)
% plot(x,FRPs(:,1),'-ks' )
% hold on;
% plot(x,FRPs(:,2),'-ro' )
% hold on;
% plot(x,FRPs(:,3),'-b>' )
% ylabel('FRP (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Goldbeter Model', 'FontSize', 16)
% ylim([20 39])
% legend({'g = 0.3', 'g= 0.5', 'g= 0.75'}, 'FontSize', 14);
% 
% subplot(1,4, 4)
% plot(x,fig1A_victoria(:,1),'-ks' )
% hold on;
% plot(x,fig1A_victoria(:,2),'-ro' )
% hold on;
%  plot(x,fig1A_victoria(:,3),'-b>' )
%  ylabel('FRP (h)', 'FontSize', 14);
%  xlabel('p', 'FontSize', 14);
%  title('Gonze Model', 'FontSize', 16)
%  legend({'g = 1.5', 'g= 2', 'g= 2.3'}, 'FontSize', 14);
% 
%  ylim([20 39])

% subplot(1,4, 1)
% plot(x,data_fan_1B(:,1),'-ks' )
% hold on;
% plot(x,data_fan_1B(:,2),'-ro' )
% hold on;
% plot(x,data_fan_1B(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Poincare Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 0.05', 'Kf = 0.1', 'Kf = 0.15'}, 'FontSize', 14);
% 
% subplot(1,4, 2)
% plot(x,fig1B_jay(:,1),'-ks' )
% hold on;
% plot(x,fig1B_jay(:,2),'-ro' )
% hold on;
% plot(x,fig1B_jay(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Phase-Amplitude Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 18', 'Kf = 19', 'Kf = 20'}, 'FontSize', 14);
% 
% subplot(1,4, 3)
% plot(x1,mat(:,1),'-ks' )
% hold on;
% plot(x1,mat(:,2),'-ro' )
% hold on;
% plot(x1,mat(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Goldbeter Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 0.75', 'Kf = 1', 'Kf = 1.25'}, 'FontSize', 14);
% 
% subplot(1,4, 4)
% plot(x,fig1B_victoria(:,1),'-ks' )
% hold on;
% plot(x,fig1B_victoria(:,2),'-ro' )
% hold on;
% plot(x,fig1B_victoria(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Gonze Model', 'FontSize', 16)
% legend({'Kf = 0.002', 'Kf = 0.005', 'Kf = 0.007'}, 'FontSize', 14);
% ylim([5 35])
% 

% 
% subplot(1,4, 1)
% plot(x,fig3_Fan(:,1),'-ks' )
% hold on;
% plot(x,fig3_Fan(:,2),'-ro' )
% hold on;
% plot(x,fig3_Fan(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Poincare Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 0.05', 'Kf = 0.1', 'Kf = 0.15'}, 'FontSize', 14);
% 
% subplot(1,4, 2)
% plot(x,fig3A_jay(:,1),'-ks' )
% hold on;
% plot(x,fig3A_jay(:,2),'-ro' )
% hold on;
% plot(x,fig3A_jay(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Phase-Amplitude Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 1', 'Kf = 2', 'Kf = 3'}, 'FontSize', 14);
% 
% subplot(1,4, 3)
% plot(0:0.05:1,fig3A(:,1),'-ks' )
% hold on;
% plot(0:0.05:1,fig3A(:,2),'-ro' )
% hold on;
% plot(0:0.05:1,fig3A(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Goldbeter Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 0.75', 'Kf = 1', 'Kf = 1.25'}, 'FontSize', 14);
% 
% subplot(1,4, 4)
% plot(x,fig3A_victoria(:,1),'-ks' )
% hold on;
% plot(x,fig3A_victoria(:,2),'-ro' )
% hold on;
% plot(x,fig3A_victoria(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Gonze Model', 'FontSize', 16)
% legend({'Kf = 0.002', 'Kf = 0.005', 'Kf = 0.007'}, 'FontSize', 14);
% ylim([5 35])
% 
% 
% % 
% subplot(1,4, 1)
% plot(x,fig3_Fan(:,4),'-ks' )
% hold on;
% plot(x,fig3_Fan(:,5),'-ro' )
% hold on;
% plot(x,fig3_Fan(:,6),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Poincare Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 0.05', 'Kf = 0.1', 'Kf = 0.15'}, 'FontSize', 14);
% 
% subplot(1,4, 2)
% plot(x,figure3B_jay(:,1),'-ks' )
% hold on;
% plot(x,figure3B_jay(:,2),'-ro' )
% hold on;
% plot(x,figure3B_jay(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Phase-Amplitude Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 1', 'Kf = 2', 'Kf = 3'}, 'FontSize', 14);
% 
% subplot(1,4, 3)
% plot(x3,fig3B(:,1),'-ks' )
% hold on;
% plot(x3,fig3B(:,2),'-ro' )
% hold on;
% plot(x3,fig3B(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Goldbeter Model', 'FontSize', 16)
% ylim([5 35])
% legend({'Kf = 0.75', 'Kf = 1', 'Kf = 1.25'}, 'FontSize', 14);
% 
% subplot(1,4, 4)
% plot(x,fig3B_victoria(:,1),'-ks' )
% hold on;
% plot(x,fig3B_victoria(:,2),'-ro' )
% hold on;
% plot(x,fig3B_victoria(:,3),'-b>' )
% ylabel('LLE (h)', 'FontSize', 14);
% xlabel('p', 'FontSize', 14);
% title('Gonze Model', 'FontSize', 16)
% legend({'Kf = 0.002', 'Kf = 0.005', 'Kf = 0.007'}, 'FontSize', 14);
% ylim([5 35])
% 



% subplot(4,1, 1)
% plot(200:0.1:436,normalize(figure2A_fan(20000:10:43600,2)),'-k' )
% hold on;
% plot(200:0.1:436,normalize(figure2A_fan(20000:10:43600,1)),'-r' )
% % hold on;
% % plot(x,fig3_Fan(:,6),'-b>' )
% ylabel('X_i (nM)', 'FontSize', 14);
% xlabel('time (h)', 'FontSize', 14);
% title('Poincare Model', 'FontSize', 16)
% legend({'VL', 'DM'}, 'FontSize', 14);
% 
% subplot(4,1, 2)
% plot( tjay, figure2A_jay(91:end,1), '-k' ); 
% hold on;
% plot( tjay, figure2A_jay(91:end,250), '-r' ); 
% ylabel('PER mRNA (nM)', 'FontSize', 14);
% xlabel('Time (h)', 'FontSize', 14);
% title('Phase-Amplitude Model', 'FontSize', 16)
% legend({'VL', 'DM'}, 'FontSize', 14);
% 
% subplot(4,1, 3)
% plot(1700:2000,fig2A(:,1),'-k' )
% hold on;
% plot(1700:2000,fig2A(:,2),'-r' )
% % hold on;
% % plot(1700:2000,fig2A(:,3),'-b>' )
% ylabel('PER mRNA (nM)', 'FontSize', 14);
% xlabel('time(h)', 'FontSize', 14);
% title('Goldbeter Model', 'FontSize', 16)
% legend({'VL', 'DM'}, 'FontSize', 14);
% 
% subplot(4,1, 4)
% plot(x_victoria,figure2A_victoria(:,1),'-k' )
% hold on;
% plot(x_victoria,figure2A_victoria(:,2),'-r' )
% % hold on;
% % plot(x,fig2A_victoria(:,3),'-b>' )
% ylabel('CLOCK mRNA (nM)', 'FontSize', 14);
% xlabel('Time (h)', 'FontSize', 14);
% title('Gonze Model', 'FontSize', 16)
% legend({'VL', 'DM'}, 'FontSize', 14);


% subplot(4,1, 1)
% plot(200:0.1:436,normalize(figure2B_fan(20000:10:43600,2)),'-b' )
% hold on;
% plot(200:0.1:436,normalize(figure2B_fan(20000:10:43600,3)),'-k' )
% hold on;
% plot(200:0.1:436,normalize(figure2B_fan(20000:10:43600,1)),'-r' )
% % hold on;
% % plot(x,fig3_Fan(:,6),'-b>' )
% ylabel('X_i (nM)', 'FontSize', 14);
% xlabel('time (h)', 'FontSize', 14);
% title('Poincare Model', 'FontSize', 16)
% legend({'VL0', 'VL' ,'DM'}, 'FontSize', 14);
% 
% subplot(4,1, 2)
% plot( tjay, figure2B_jay(91:end,290), '-b' ); 
% hold on;
% plot( tjay, figure2B_jay(91:end,1), '-k' ); 
% hold on;
% plot( tjay, figure2B_jay(91:end,250), '-r' ); 
% ylabel('PER mRNA (nM)', 'FontSize', 14);
% xlabel('Time (h)', 'FontSize', 14);
% title('Phase-Amplitude Model', 'FontSize', 16)
% legend({'VL0', 'VL' ,'DM'}, 'FontSize', 14);
% 
% subplot(4,1, 3)
% plot(1700:2000,fig2B(:,1),'-b' )
% hold on;
% plot(1700:2000,fig2B(:,2),'-k' )
% hold on;
% plot(1700:2000,fig2B(:,3),'-r' )
% % hold on;
% % plot(1700:2000,fig2A(:,3),'-b>' )
% ylabel('PER mRNA (nM)', 'FontSize', 14);
% xlabel('time(h)', 'FontSize', 14);
% title('Goldbeter Model', 'FontSize', 16)
% legend({'VL0', 'VL' ,'DM'}, 'FontSize', 14);
% 
% subplot(4,1, 4)
% plot(x_victoria(1:1001),figure2B_victoria(:,1),'-b' )
% hold on;
% plot(x_victoria(1:1001),figure2B_victoria(:,2),'-k' )
% hold on;
% plot(x_victoria(1:1001),figure2B_victoria(:,3),'-r' )
% % hold on;
% % plot(x,fig2A_victoria(:,3),'-b>' )
% ylabel('CLOCK mRNA (nM)', 'FontSize', 14);
% xlabel('Time (h)', 'FontSize', 14);
% title('Gonze Model', 'FontSize', 16)
% legend({'VL0', 'VL' ,'DM'}, 'FontSize', 14);


subplot(4,1, 1)
plot(200:0.1:436,normalize(figure2C_fan(20000:10:43600,1)),'-b' )
hold on;
plot(200:0.1:436,normalize(figure2C_fan(20000:10:43600,2)),'-k' )
hold on;
plot(200:0.1:436,normalize(figure2C_fan(20000:10:43600,3)),'-r' )
% hold on;
% plot(x,fig3_Fan(:,6),'-b>' )
ylabel('X_i (nM)', 'FontSize', 14);
xlabel('time (h)', 'FontSize', 14);
title('Poincare Model', 'FontSize', 16)
legend({'DM0', 'DM' ,'VL'}, 'FontSize', 14);

subplot(4,1, 2)
plot( tjay, figure2C_jay(91:end,290), '-b' ); 
hold on;
plot( tjay, figure2C_jay(91:end,250), '-k' ); 
hold on;
plot( tjay, figure2C_jay(91:end,1), '-r' ); 
ylabel('PER mRNA (nM)', 'FontSize', 14);
xlabel('Time (h)', 'FontSize', 14);
title('Phase-Amplitude Model', 'FontSize', 16)
legend({'DM0', 'DM' ,'VL'}, 'FontSize', 14);

subplot(4,1, 3)
plot(1700:2000,DM_trace_nss(),'-b' )
hold on;
plot(1700:2000,DM_trace_ss(),'-k' )
hold on;
plot(1700:2000,VL_trace(),'-r' )
% hold on;
% plot(1700:2000,fig2A(:,3),'-b>' )
ylabel('PER mRNA (nM)', 'FontSize', 14);
xlabel('time(h)', 'FontSize', 14);
title('Goldbeter Model', 'FontSize', 16)
legend({'DM0', 'DM' ,'VL'}, 'FontSize', 14);

subplot(4,1, 4)
plot(x_victoria(1:1001),figure2C_victoria(:,1),'-b' )
hold on;
plot(x_victoria(1:1001),figure2C_victoria(:,2),'-k' )
hold on;
plot(x_victoria(1:1001),figure2C_victoria(:,3),'-r' )
% hold on;
% plot(x,fig2A_victoria(:,3),'-b>' )
ylabel('CLOCK mRNA (nM)', 'FontSize', 14);
xlabel('Time (h)', 'FontSize', 14);
title('Gonze Model', 'FontSize', 16)
legend({'DM0', 'DM' ,'VL'}, 'FontSize', 14);
