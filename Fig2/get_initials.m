%% initial conditions
HR0= 75; %beat/min
SV0=70; %ml/min
TPR0= 0.02; %mmHg.min/ml
MAP0=HR0*SV0*TPR0;
SP_MAP0=105;

A0 = [SV0 HR0 TPR0 0 0 ];