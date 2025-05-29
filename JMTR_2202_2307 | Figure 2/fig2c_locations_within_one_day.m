clc;clear;close all;

load flow.mat;

color=[1,0,0;0,1,0;0,1,1;0,0,1;0.63,0.13,0.94];

senind(1)=33;senind(2)=166;senind(3)=92;senind(4)=8;%senind=randsample(1:170,4);

dayind=59; %dayind=round(rand(1,1)*62+1);

for i = 1 : 4
parspd(:,i)=flow((288*dayind-287):(288*dayind),senind(i));
end
for i = 1 : 4
plot(parspd(:,i)','color',color(i,:),'Linewidth',0.7);
hold on;
end

grid on;

set(gca,'FontName','Times New Roman','FontSize',20,'XTick',0:40:288,'XLim',[0 288]);
legend('Link 1','Link 2','Link 3','Link 4', 'Location', 'northwest');

xlabel('Time (5-min interval)');ylabel('Volume (vehs/h)');
