clear all; close all; 
RL = 985; deltarl = 1;
R2 = 2160; deltar2 = 10;
R1 = 4650; deltar1 = 10;
V1 = 6.01; deltavl = 0.01;
%IV1 = 0.92;
V2 = 3.94; deltav2 = 0.01;
%IV2 = 0.86;
VR2 = 1.97;
VR1 = 4.22;
VRL = 1.75;
I1 = ((V1*(R2+RL))-V2*RL)/((R1*(R2+RL))+R2*RL)
I2 = ((V2*(R1+RL))-V1*RL)/((R1*(R2+RL))+R2*RL)
req1 = (R1*R2)/(RL) 
den = R1*(R2+RL)+R2*RL;
partial1V1 = (R2+RL)/den; partial1V2 = (-RL)/den; partial1R1 = ((R2+RL)*(V2*RL-V1*(R2+RL)))/(den^2);
partial1R2 = (V2*RL*(R1+RL)-V1*RL^2)/(den^2); partial1RL = (V2*R1*R2-V1*R2^2)/(den^2);
deltai1 = sqrt((deltavl*partial1V1)^2+(deltav2*partial1V2)^2+(deltar1*partial1R1)^2+(deltar2*partial1R2)^2+(deltarl*partial1RL)^2)
partial2V2 = (R1+RL)/den; partial2V1 = (-RL)/den; partial2R2 = ((R1+RL)*(V1*RL-V2*(R1+RL)))/(den^2);
partial2R1 = (V1*RL*(R2+RL)-V2*RL^2)/(den^2); partial2RL = (V1*R1*R2-V2*R1^2)/(den^2);
deltai2 = sqrt((deltavl*partial2V1)^2+(deltav2*partial2V2)^2+(deltar1*partial2R1)^2+(deltar2*partial2R2)^2+(deltarl*partial2RL)^2)