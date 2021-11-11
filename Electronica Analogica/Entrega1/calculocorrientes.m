clear all; close all; 
RL = 985;
R1 = 2160;
R2 = 4650;
V1 = 6.01;
%IV1 = 0.92;
V2 = 3.94;
%IV2 = 0.86;
VR2 = 1.97;
VR1 = 4.22;
VRL = 1.75;
I1 = ((V1*(R1+RL))-V2*RL)/((R1*(R2+RL))+R2*RL)
I2 = ((V2*(R2+RL))-V1*RL)/((R1*(R2+RL))+R2*RL)
req1 = (R1*R2)/(RL) 

