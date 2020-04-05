%% Drug parameters

%PD
Imax=0.38;
C50=55; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
lCp=[0
1.01
38
73.08
82.62
72.45
70.5
61.85
52.9
44.72
37.46
]'; %ng/ml

for x=1:length(lCp)
    I(:,x)=(Imax*lCp(:,x)^GAMA)./(C50+lCp(:,x)^GAMA); 
end

%% system parameters

KOUT=35/60;%min-1