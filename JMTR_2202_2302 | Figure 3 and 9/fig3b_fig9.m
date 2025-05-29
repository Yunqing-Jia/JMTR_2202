clc; clear; close all;
load Z.mat % Before & after processing for figure 3b & 9, respectively
% A 3*208*208 tensor (Multi-view traffic data affinity matrices)
% (V/O/S * 208 sensors * 208 sensors)

ticks_limit=[0,1]; % [0,0.05] for figure 9
ticks_range=0:0.2:1; % 0:0.01:0.05 for figure 9

figure;
imagesc(ten2mat(Z(1,:,:),3),ticks_limit);hold on;
colorbar;xlabel('Location index');ylabel('Location index');
title('Volume');%,'FontName','Times New Roman','FontSize',24);
set(colorbar,'Ticks',ticks_range,'Fontsize',16);
set(gca,'YTick',0:50:200,'Fontsize',16);

figure;
imagesc(ten2mat(Z(2,:,:),3),ticks_limit);hold on;
colorbar;xlabel('Location index');ylabel('Location index');
title('Occupancy');%,'FontName','Times New Roman','FontSize',24);
set(colorbar,'Ticks',ticks_range,'Fontsize',16);
set(gca,'YTick',0:50:200,'Fontsize',16);

figure;
imagesc(ten2mat(Z(3,:,:),3),ticks_limit);hold on;
colorbar;xlabel('Location index');ylabel('Location index');
title('Speed');%,'FontName','Times New Roman','FontSize',24);
set(colorbar,'Ticks',ticks_range,'Fontsize',16);
set(gca,'YTick',0:50:200,'Fontsize',16);
