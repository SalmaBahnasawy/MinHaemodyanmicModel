%% Set initial conditions & run simulation
get_initials_fb
options = odeset('RelTol',1E-7);
%% System perturbation by SV step function with feedback accounted for
[t, A]= ode45(@fig3_ODE,[0 2], A0,options,SP_MAP0, SV0,HR0, TPR0, KOUT,beta);

% save run output
VEC
Time=t;
output_fb=table(Time, MAP, HR,TPR,SV,CO);
%% System perturbation by SV step function with feedback switched off
[t, A]= ode45(@fig3_ODE_nofb,[0 2], A0,options,SP_MAP0, SV0,HR0, TPR0, KOUT,beta);

% save run output
VEC
Time=t;
output_nofb=table(Time, MAP, HR,TPR,SV,CO);
