clc;clear;close all;

load flow.mat;

color=[1,0,0;0,1,0;0,1,1;0,0,1;0.63,0.13,0.94];

intind=199;%round(rand(1,1)*283+1);
senind=152;%round(rand(1,1)*170+1);
for i = 1 : 31
parspdp(:,i)=flow((288*i-287):(288*i),senind);
parspd(:,i)=parspdp(intind:(intind+4),i);
end
for i = 1 : 5
plot(parspd(i,:)','color',color(i,:),'Linewidth',0.7);
hold on;
end
grid on;
set(gca,'FontName','Times New Roman','FontSize',20,'XTick',1:5:31,'XLim',[1 31],'YTick',0:100:600,'YLim',[100 600]);
legend('Interval 1','Interval 2','Interval 3','Interval 4','Interval 5', 'Location', 'southeast');

xlabel('Day');ylabel('Volume (vehs/h)'); 
