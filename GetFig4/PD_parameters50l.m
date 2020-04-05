%% Drug parameters
%PK
% D=600; %ug/hr
% k10=0.074 ;%hr
% V=700; %L
% ka=
% F=.


%PD
Imax=0.38;
C50=55; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
lCp=[0
3.55
14.78
40.47
49.28
49.97
45.54
37.19
30.29
26.69
20.37

]'; %ng/ml
% Cp=zeros(1,11);
I=[];
for x=1:length(lCp)
    I(:,x)=(Imax*lCp(:,x)^GAMA)./(C50+lCp(:,x)^GAMA); 
end

%% system parameters

KOUT=35; %hr-1