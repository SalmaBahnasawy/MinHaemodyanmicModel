
%% model ode's drug effect on BR it self rather than setpoint
function dAdt = fig3_ODE_nofb(t, A, SP_MAP0, SV0,HR0, TPR0, KOUT,beta)
%% perturb TPR from time=0.5 to 1 hour

if t>=0.5 && t<1
   SV0=85;
end

%% Set point 
SV=A(1)*(1-beta*log(A(2)/HR0));
MAP = A(2)*A(3)*SV;
SP_MAP=SP_MAP0;
DELTA=(MAP-SP_MAP)/SP_MAP;

%% ODEs matrix
dAdt(1)=KOUT* SV0*(1 - A(4))-  KOUT*A(1);                            %d(SV)/dt
dAdt(2)= KOUT*HR0*(1 - A(4))- KOUT*A(2);                             %d(HR)/dt
dAdt(3)=KOUT*TPR0*(1 - A(4)) - KOUT*A(3);                              %d(TPR)/dt
dAdt(4)=0;                                %d(delta BR)/dt
dAdt=[dAdt(1);dAdt(2);dAdt(3);dAdt(4)];
end
%%