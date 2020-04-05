
%% model ode's drug effect on BR it self rather than setpoint
function dAdt = PD_ODEs(t, A, MAP_SP, SV0,HR0,TPR0,kout, beta)
%% Set point 
SV=A(1)*(1-beta*log(A(2)/HR0));
MAP = A(2)*A(3)*SV;
DELTA=(MAP-MAP_SP)/MAP_SP;

%% ODEs matrix
dAdt(1)=kout* SV0*(1 - A(4)) - kout*A(1);	%d(SV)/dt
dAdt(2)=kout* HR0*(1 - A(4)) - kout*A(2);	%d(HR)/dt
dAdt(3)=kout* TPR0*(1 - A(4))- kout*A(3);	%d(TPR)/dt
dAdt(4)=kout*(DELTA-A(4));                  %d(delta BR)/dt
dAdt=[dAdt(1);dAdt(2);dAdt(3);dAdt(4)];
end