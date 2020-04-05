
%% model ode's drug effect on BR it self rather than setpoint
function dAdt = PD_ODEs(t, A, I,SP_MAP0, SV0,HR0, TPR0, KOUT)
% perturb TPR from time=0.5 to 1 hour
% if t>=0.5 && t<1
%    TPR0=0.012;
% end

    %% Set point 
SP_MAP = SP_MAP0;
SV=A(1)*(1-0.22*log(A(2)/HR0));
MAP = A(2)*A(3)*SV;
DELTA = (SP_MAP-MAP)/SP_MAP; %change in MAP relative to MAP set point
%% Define Imax model
% Cp=A(1)/V;
% i=1:length(I);
% I=(Imax*Cp)/(C50+Cp);
%% ODEs matrix
% dAdt(1)= D-k10*A(1);
dAdt(1)=KOUT* SV0*(1 + A(4)) -  KOUT*A(1);                            %d(SV)/dt
dAdt(2)= KOUT*HR0*(1 +A(4))*(1-I) - KOUT*A(2);                             %d(HR)/dt
dAdt(3)=KOUT*TPR0*(1 + A(4)) - KOUT*A(3);                              %d(TPR)/dt
dAdt(4)=KOUT*DELTA- KOUT*A(4);                                %d(delta BR)/dt
dAdt=[dAdt(1);dAdt(2);dAdt(3);dAdt(4)];

end 
%%