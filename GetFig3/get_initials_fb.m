%% initial conditions
HR0= 75; %beat/min
SV0=77.75; %ml/min
TPR0= 0.016; %mmHg.min/ml
MAP0=HR0*SV0*TPR0;
SP_MAP0=93.3;

A0 = [SV0 HR0 TPR0 0];

%% system parameter
KOUT=35;
beta=0.22;