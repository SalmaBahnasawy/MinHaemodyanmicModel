%% Drug parameters

%PD
Imax=0.38;
C50=55; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
uCp=[0
3.48
68.97
113.36
122.93
117.7
115.32
109.44
100.55
89.65
80.3

]'; %ng/ml

for x=1:length(uCp)
    I(:,x)=(Imax*uCp(:,x)^GAMA)./(C50+uCp(:,x)^GAMA); 
end

%% system parameters

KOUT=35;%hr-1