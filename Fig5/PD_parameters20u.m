%% Drug parameters
%PD
Imax=0.9;
C50=120; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
uCp=[0
12.37
79.32
146.15
140.27
168.01
174.41
135.3
]'; %ug/ml
% Cp=zeros(1,4);
for x=1:length(uCp)
    I(:,x)=(Imax*uCp(:,x)^GAMA)./(C50^GAMA+uCp(:,x)^GAMA); 
end

%% system parameters

KOUT=35/60; %min-1