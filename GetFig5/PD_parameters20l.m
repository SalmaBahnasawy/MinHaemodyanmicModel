%% Drug parameters
%PD
Imax=0.9;
C50=120; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
lCp=[0
9.23
47.3
102.87
108.45
108.47
111.89
90.68
]'; %ug/ml
% Cp=zeros(1,4);
for x=1:length(lCp)
    I(:,x)=(Imax*lCp(:,x)^GAMA)./(C50^GAMA+lCp(:,x)^GAMA); 
end

%% system parameters

KOUT=35/60; %min-1