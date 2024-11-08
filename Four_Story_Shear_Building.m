% https://isr.umd.edu/~austin/aladdin.d/matrix-appl-building.html

clc;clear all;


M = diag([1500;3000;3000;4500]);
K = [ 800  , -800  ,0     , 0;
      -800 , 2400  ,-1600 , 0;
      0    , -1600 ,4000  , -2400;
      0    , 0     ,-2400 , 5600;    
];


[U,D]=eig(K,M);

for i=1:4
    f = sqrt(D(i,i))/(2*pi);
    disp(['Frequency ' num2str(i) ' = ' num2str(f) ' Hz' ])
    disp(['Mode ' num2str(i)])
    disp(['----------'])
    disp([num2str(U(:,i))])
    disp(' ');
end

PlotModes(D,U);
return
%%
close all
w= 0.1;
figure()
hold on
plot([-0,-0],[1,5],'k')
plot([w,w],[1,5],'k' )
p1_1=plot([U(:,1);0],[5,4,3,2,1],'-ob');
p1_2=plot([U(:,1)+w;w],[5,4,3,2,1],'-ob');
p1_3=plot([U(1,1),U(1,1)+w],[5,5],'b')
p1_4=plot([U(2,1),U(2,1)+w],[4,4],'b')
p1_5=plot([U(3,1),U(3,1)+w],[3,3],'b')
p1_6=plot([U(4,1),U(4,1)+w],[2,2],'b')
axis([-w/2,1.5*w,1,5.5])
set(gca,'XTick',[])
set(gca,'YTick',[])

