%% Formatting
clc
clear
close all
format shortg

DCM = genDCM('deg',[45 20 30],[2 3 1])

[theta_deg,theta_rad,k] = genAngleAxis(DCM)

[q,inv_q] = genQuat('deg',theta_deg,k)

r = quatProd(q,[0;1;1;1])
v = quatProd(r,inv_q)