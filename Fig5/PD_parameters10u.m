%% Drug parameters
%PD
Imax=0.9;
C50=120; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
uCp=[0
32.27
80.27
100.52
66.63
63.86
60.69
48.07

]'; %ug/ml
% Cp=zeros(1,4);
for x=1:length(uCp)
    I(:,x)=(Imax*uCp(:,x)^GAMA)./(C50+uCp(:,x)^GAMA); 
end

%% system parameters

KOUT=80/60; %min-1