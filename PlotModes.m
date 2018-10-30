function f = PlotModes(D,U)

h = figure(1);
sgtitle('4 Story Shear Building')

subplot(1,4,1)
p1=plot([U(:,1);0],[5,4,3,2,1],'-o',[0,0],[1,5],'k' );
axis([-0.03,0.03,1,5.5])
set(gca,'xtick',[])
set(gca,'ytick',[])
title(['Mode 1, Freq = ' num2str(sqrt(D(1,1))/(2*pi) ) 'Hz'])

subplot(1,4,2)
p2=plot([U(:,2);0],[5,4,3,2,1],'-o',[0,0],[1,5],'k'  );
axis([-0.03,0.03,1,5.5])
set(gca,'xtick',[])
set(gca,'ytick',[])
title(['Mode 2, Freq = ' num2str(sqrt(D(2,2))/(2*pi) ) 'Hz' ])

subplot(1,4,3)
p3=plot([U(:,3);0],[5,4,3,2,1],'-o',[0,0],[1,5],'k'  );
axis([-0.03,0.03,1,5.5])
set(gca,'xtick',[])
set(gca,'ytick',[])
title(['Mode 3, Freq = ' num2str(sqrt(D(3,3))/(2*pi) ) 'Hz' ])

subplot(1,4,4)
p4=plot([U(:,4);0],[5,4,3,2,1],'-o',[0,0],[1,5],'k'  );
axis([-0.03,0.03,1,5.5])
set(gca,'xtick',[])
set(gca,'ytick',[])
title(['Mode 4, Freq = ' num2str(sqrt(D(4,4))/(2*pi)  ) 'Hz' ])

disp('Press a key to continue!')  
pause;
filename = 'FourStoryShearBuilding.gif';
dt = 0.04;

for t=0:dt:50  
   
    x1=U(:,1)*sin(sqrt(D(1,1))*t);
    x2=U(:,2)*sin(sqrt(D(2,2))*t);
    x3=U(:,3)*sin(sqrt(D(3,3))*t);
    x4=U(:,4)*sin(sqrt(D(4,4))*t);
    
    set(p1(1),'Xdata', [x1;0]');
    set(p2(1),'Xdata', [x2;0]');
    set(p3(1),'Xdata', [x3;0]');
    set(p4(1),'Xdata', [x4;0]');        
    
    pause(dt);
    
    frame = getframe(h);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);

    if t == 0;
        imwrite(imind,cm,filename,'gif','Loopcount',inf,'DelayTime',dt);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',dt);
    end
    
end 

end


