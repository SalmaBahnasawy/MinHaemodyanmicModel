%% Drug parameters
%PD
Imax=0.38;
C50=55; %ng/ml reported c50=105 nmol/l, Mwt=267.364 gm/mol
GAMA=1;
Cp=[0
5.16
22.41
52.72
58.66
58.01
54.22
46.19
38.15
34.47
27.22

]'; %ng/ml
% Cp=zeros(1,11);
I=[];
for x=1:length(Cp)
    I(:,x)=(Imax*Cp(:,x)^GAMA)./(C50+Cp(:,x)^GAMA); 
end

%% system parameters

KOUT=35; %hr-1