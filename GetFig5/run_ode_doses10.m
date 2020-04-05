
%% Parameter input
PD_parameters10
T=[];
Y=[];

%% Set initial conditions & run simulation
get_initials10
options = odeset('RelTol',1E-7);
T=[0
5
15
30
45
60
]';
nTime     = length(T);
Y    = zeros(nTime, length(A0));
Y(1, :) = A0;
for iTime = 2:nTime
  [t, y_] = ode45(@PD_ODEs, T(iTime-1:iTime), A0, options, I(iTime),SP_MAP0, SV0,HR0, TPR0, KOUT);
  A0       = y_(end, :);
  Y(iTime, :) =A0;
end
VEC

get_initials10
PD_parameters10l
Y    = zeros(nTime, length(A0));
Y(1, :) = A0;
for iTime = 2:nTime
  [t, y_] = ode45(@PD_ODEs, T(iTime-1:iTime), A0, options, I(iTime),SP_MAP0, SV0,HR0, TPR0, KOUT);
  A0       = y_(end, :);
  Y(iTime, :) =A0;
end
lVEC

get_initials10
PD_parameters10u
Y    = zeros(nTime, length(A0));
Y(1, :) = A0;
for iTime = 2:nTime
  [t, y_] = ode45(@PD_ODEs, T(iTime-1:iTime), A0, options, I(iTime),SP_MAP0, SV0,HR0, TPR0, KOUT);
  A0       = y_(end, :);
  Y(iTime, :) =A0;
end
uVEC
% save myFile.mat lMAP lHR -append
Time=T';

output_10=table(Time, MAP, HR, uMAP, uHR, lMAP, lHR);

writetable(output_10,'output_PRED_10.csv');
