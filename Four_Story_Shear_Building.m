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
