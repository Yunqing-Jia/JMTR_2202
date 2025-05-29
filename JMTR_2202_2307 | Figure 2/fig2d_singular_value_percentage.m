clc;clear;close all;

load flow.mat;

[~,S,~]=svd(flow);
s0=diag(S);
s0=s0/sum(s0);
s0=cumsum(s0)*100;
plot(s0,'-b.','Linewidth',0.5);hold on;
plot(1,s0(1,1),'r.','MarkerSize',15);hold on;
plot(52,s0(52,1),'r.','MarkerSize',15);hold on;
plot(85,s0(85,1),'r.','MarkerSize',15);hold on;
plot(108,s0(108,1),'r.','MarkerSize',15);hold on;
grid on;

set(gca,'FontName','Times New Roman','FontSize',20,'XTick',[52 85 108 170],'XLim',[1 170],'YTick',[0 40 80 90 95 100],'YLim',[0 100]);

xlabel('Rank');ylabel('Cumulative singular value percentage (%)');  
