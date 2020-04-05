%% Drug parameters
%PD
Imax=0.9;
C50=120; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
lCp=[0
13.59
31.51
50.78
48.25
40.78
43.95
34.51
]'; %ug/ml
% Cp=zeros(1,4);
for x=1:length(lCp)
    I(:,x)=(Imax*lCp(:,x)^GAMA)./(C50+lCp(:,x)^GAMA); 
end

%% system parameters

KOUT=35/60; %min-1