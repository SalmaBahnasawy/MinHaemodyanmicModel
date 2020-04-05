%% Drug parameters
%PD
Imax=0.38;
C50=55; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
Cp=[0
2.8
53.74
92.93
102.19
95.38
93.67
86.46
76.91
67.47
58.92
]'; %ng/ml

for x=1:length(Cp)
    I(:,x)=(Imax*Cp(:,x)^GAMA)./(C50+Cp(:,x)^GAMA); 
end

%% system parameters

KOUT=35/60;%min-1