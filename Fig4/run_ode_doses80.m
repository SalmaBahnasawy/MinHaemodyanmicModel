
%% Parameter input
PD_parameters80
T=[];
Y=[];
%% run ode dose 80 mg 
get_initials80
options = odeset('RelTol',1E-7);
T=[0
20
30
50
60
90
120
180
240
300
360
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
% save myFile.mat T MAP HR

get_initials80
PD_parameters80l
Y    = zeros(nTime, length(A0));
Y(1, :) = A0;
for iTime = 2:nTime
  [t, y_] = ode45(@PD_ODEs, T(iTime-1:iTime), A0, options, I(iTime),SP_MAP0, SV0,HR0, TPR0, KOUT);
  A0       = y_(end, :);
  Y(iTime, :) =A0;
end
lVEC
% save myFile.mat uMAP uHR -append

get_initials80
PD_parameters80u
Y    = zeros(nTime, length(A0));
Y(1, :) = A0;
for iTime = 2:nTime
  [t, y_] = ode45(@PD_ODEs, T(iTime-1:iTime), A0, options, I(iTime),SP_MAP0, SV0,HR0, TPR0, KOUT);
  A0       = y_(end, :);
  Y(iTime, :) =A0;
end
uVEC
% save myFile.mat lMAP lHR -append
Time=T'./60;
output_80=table (Time, MAP, HR, uMAP, uHR, lMAP, lHR);

writetable(output_80,'output_PRED_80.csv');
