clc; clear; close all;
load X.mat 
% From Seattle dataset
% A 3*(288*14)*208 tensor 
% (V/O/S * 14 days' 5-min intervals * 208 sensors)

% Volume
figure;
imagesc(ten2mat(X(1,:,:),3), [0, 200]); 
colorbar;
xlabel('Time index'); ylabel('Location index');
title('Volume');
set(gca, 'YTick', 0:50:200, 'FontSize', 14);
set(colorbar, 'Ticks', 0:50:200, 'FontSize', 14);
colormap("jet");

% Occupancy
figure;
imagesc(ten2mat(X(2,:,:),3), [0, 100]);
colorbar;
xlabel('Time index'); ylabel('Location index');
title('Occupancy');
set(gca, 'YTick', 0:50:200, 'FontSize', 14);
set(colorbar, 'Ticks', 0:20:100, 'FontSize', 14);
colormap("jet");

% Speed
figure;
imagesc(ten2mat(X(3,:,:),3), [0, 85]);
colorbar;
xlabel('Time index'); ylabel('Location index');
title('Speed');
set(gca, 'YTick', 0:50:200, 'FontSize', 14);
set(colorbar, 'Ticks', 0:20:80, 'FontSize', 14);
colormap("jet");
