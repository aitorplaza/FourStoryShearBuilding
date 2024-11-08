function f = PlotModes(D,U)
fig = figure(1);

sgtitle('4 Story Shear Building')

subplot(1,4,1)
w= 0.1;
hold on
plot([-0,-0],[1,5],'k')
plot([w,w],[1,5],'k' )
p1_1=plot(zeros(5,1),[5,4,3,2,1],'-ob', 'LineWidth',2);
p1_2=plot(zeros(5,1)+w,[5,4,3,2,1],'-ob', 'LineWidth',2);
p1_3=plot([0,0+w],[5,5],'b', 'LineWidth',2)
p1_4=plot([0,0+w],[4,4],'b', 'LineWidth',2)
p1_5=plot([0,0+w],[3,3],'b', 'LineWidth',2)
p1_6=plot([0,0+w],[2,2],'b', 'LineWidth',2)
axis([-w/2,1.5*w,1,5.5])
set(gca,'xtick',[])
set(gca,'ytick',[])
h = gca;
% h.XAxis.Visible = 'off';
h.YAxis.Visible = 'off';
title(['Mode 1, Freq = ' num2str(sqrt(D(1,1))/(2*pi) ) 'Hz'])

subplot(1,4,2)
w = 0.1;
hold on
plot([-0,-0],[1,5],'k')
plot([w,w],[1,5],'k' )
p2_1=plot(zeros(5,1),[5,4,3,2,1],'-ob', 'LineWidth',2);
p2_2=plot(zeros(5,1)+w,[5,4,3,2,1],'-ob', 'LineWidth',2);
p2_3=plot([0,0+w],[5,5],'b', 'LineWidth',2)
p2_4=plot([0,0+w],[4,4],'b', 'LineWidth',2)
p2_5=plot([0,0+w],[3,3],'b', 'LineWidth',2)
p2_6=plot([0,0+w],[2,2],'b', 'LineWidth',2)
axis([-w/2,1.5*w,1,5.5])
set(gca,'xtick',[])
set(gca,'ytick',[])
h = gca;
% h.XAxis.Visible = 'off';
h.YAxis.Visible = 'off';
title(['Mode 2, Freq = ' num2str(sqrt(D(2,2))/(2*pi) ) 'Hz' ])

subplot(1,4,3)
% p3=plot([U(:,3);0],[5,4,3,2,1],'-o',[0,0],[1,5],'k'  );
% axis([-0.03,0.03,1,5.5])
w = 0.1;
hold on
plot([-0,-0],[1,5],'k')
plot([w,w],[1,5],'k' )
p3_1=plot(zeros(5,1),[5,4,3,2,1],'-ob', 'LineWidth',2);
p3_2=plot(zeros(5,1)+w,[5,4,3,2,1],'-ob', 'LineWidth',2);
p3_3=plot([0,0+w],[5,5],'b', 'LineWidth',2)
p3_4=plot([0,0+w],[4,4],'b', 'LineWidth',2)
p3_5=plot([0,0+w],[3,3],'b', 'LineWidth',2)
p3_6=plot([0,0+w],[2,2],'b', 'LineWidth',2)
axis([-w/2,1.5*w,1,5.5])
set(gca,'xtick',[])
set(gca,'ytick',[])
h = gca;
% h.XAxis.Visible = 'off';
h.YAxis.Visible = 'off';
title(['Mode 3, Freq = ' num2str(sqrt(D(3,3))/(2*pi) ) 'Hz' ])

subplot(1,4,4)
% p4=plot([U(:,4);0],[5,4,3,2,1],'-o',[0,0],[1,5],'k'  );
% axis([-0.03,0.03,1,5.5])
w = 0.1;
hold on
plot([-0,-0],[1,5],'k')
plot([w,w],[1,5],'k' )
p4_1=plot(zeros(5,1),[5,4,3,2,1],'-ob', 'LineWidth',2);
p4_2=plot(zeros(5,1)+w,[5,4,3,2,1],'-ob', 'LineWidth',2);
p4_3=plot([0,0+w],[5,5],'b', 'LineWidth',2)
p4_4=plot([0,0+w],[4,4],'b', 'LineWidth',2)
p4_5=plot([0,0+w],[3,3],'b', 'LineWidth',2)
p4_6=plot([0,0+w],[2,2],'b', 'LineWidth',2)
axis([-w/2,1.5*w,1,5.5])
set(gca,'xtick',[])
set(gca,'ytick',[])
h = gca;
%h.XAxis.Visible = 'off';
h.YAxis.Visible = 'off';
title(['Mode 4, Freq = ' num2str(sqrt(D(4,4))/(2*pi)  ) 'Hz' ])

disp('Press a key to continue!')  
pause;
filename = 'FourStoryShearBuilding.gif';
dt = 0.04;

for t=0:dt:30  
   
    x1=U(:,1)*sin(sqrt(D(1,1))*t);
    x2=U(:,2)*sin(sqrt(D(2,2))*t);
    x3=U(:,3)*sin(sqrt(D(3,3))*t);
    x4=U(:,4)*sin(sqrt(D(4,4))*t);
    
    set(p1_1(1),'Xdata', [x1;0]');
    set(p1_2(1),'Xdata', [x1+w;w]');
    set(p1_3(1),'Xdata', [x1(1);x1(1)+w]');
    set(p1_4(1),'Xdata', [x1(2);x1(2)+w]');
    set(p1_5(1),'Xdata', [x1(3);x1(3)+w]');
    set(p1_6(1),'Xdata', [x1(4);x1(4)+w]');
    
    set(p2_1(1),'Xdata', [x2;0]');
    set(p2_2(1),'Xdata', [x2+w;w]');
    set(p2_3(1),'Xdata', [x2(1);x2(1)+w]');
    set(p2_4(1),'Xdata', [x2(2);x2(2)+w]');
    set(p2_5(1),'Xdata', [x2(3);x2(3)+w]');
    set(p2_6(1),'Xdata', [x2(4);x2(4)+w]');

    set(p3_1(1),'Xdata', [x3;0]');
    set(p3_2(1),'Xdata', [x3+w;w]');
    set(p3_3(1),'Xdata', [x3(1);x3(1)+w]');
    set(p3_4(1),'Xdata', [x3(2);x3(2)+w]');
    set(p3_5(1),'Xdata', [x3(3);x3(3)+w]');
    set(p3_6(1),'Xdata', [x3(4);x3(4)+w]');
     
    set(p4_1(1),'Xdata', [x4;0]');        
    set(p4_2(1),'Xdata', [x4+w;w]');
    set(p4_3(1),'Xdata', [x4(1);x4(1)+w]');
    set(p4_4(1),'Xdata', [x4(2);x4(2)+w]');
    set(p4_5(1),'Xdata', [x4(3);x4(3)+w]');
    set(p4_6(1),'Xdata', [x4(4);x4(4)+w]');

    pause(dt);
    
    frame = getframe(fig);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);

   
    if t == 0;
        imwrite(imind,cm,filename,'gif','Loopcount',inf,'DelayTime',dt);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',dt);
    end
    
end 

end


