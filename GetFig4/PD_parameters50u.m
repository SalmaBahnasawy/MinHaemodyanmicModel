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
uCp=[
0
6.84
30.63
65.28
68.29
66.21
64.01
55.14
46.45
43.17
33.8

]'; %ng/ml
% Cp=zeros(1,11);
I=[];
for x=1:length(uCp)
    I(:,x)=(Imax*uCp(:,x)^GAMA)./(C50+uCp(:,x)^GAMA); 
end

%% system parameters

KOUT=35/60; %min-1