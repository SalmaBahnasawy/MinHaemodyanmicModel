%% initial conditions
HR0= 75; %beat/min
SV0=70; %ml/min
MAP0=105; %mmHg
TPR0= MAP0/(HR0*SV0); %mmHg.min/ml
MAP_SP=MAP0;
A0 = [SV0 HR0 TPR0 0];