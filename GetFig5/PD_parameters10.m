%% Drug parameters
%PD
Imax=0.9;
C50=120; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
Cp=[0
22.93
55.89
75.65
57.44
52.32
52.32
41.29
]'; %ug/ml
% Cp=zeros(1,4);
for x=1:length(Cp)
    I(:,x)=(Imax*Cp(:,x)^GAMA)./(C50+Cp(:,x)^GAMA); 
end

%% system parameters

KOUT=80/60; %min-1