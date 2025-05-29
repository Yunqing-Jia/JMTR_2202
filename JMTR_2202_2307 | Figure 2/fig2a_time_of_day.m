clc;clear;close all;

load flow.mat;

color=[1,0,0;1,0.38,0;1,1,0;0,1,0;0,1,1;0,0,1;0.63,0.13,0.94];

senind=9; %round(rand(1,1)*169+1)
senmat=[1 8 15 22 29 36 43]; %Same day of week

for i = 1 : 7
    parspd(:,i)=flow((288*senmat(i)-287):(288*senmat(i)),senind);
end
for i = 1 : 7
    plot(parspd(:,i)','color',color(i,:),'Linewidth',0.7);
    hold on;
end

grid on;

set(gca,'FontName','Times New Roman','FontSize',20,'XTick',0:40:288,'XLim',[0 288]);
legend('Day 1','Day 2','Day 3','Day 4','Day 5','Day 6','Day 7', 'Location', 'northwest');

xlabel('Time (5-min interval)');ylabel('Volume (vehs/h)');
