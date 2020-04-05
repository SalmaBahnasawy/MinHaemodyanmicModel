%% Drug parameters
%PD
Imax=0.9;
C50=120; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
Cp=[0
10.8
63.31
124.51
124.36
138.24
143.15
112.99
]'; %ug/ml
% Cp=zeros(1,4);
for x=1:length(Cp)
    I(:,x)=(Imax*Cp(:,x)^GAMA)./(C50^GAMA+Cp(:,x)^GAMA); 
end

%% system parameters

KOUT=35/60; %min-1