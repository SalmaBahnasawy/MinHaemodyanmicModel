%% Define variables from algebric equations as vectors

SV=Y(:,1).*(1-beta*log(Y(:,2)./HR0));
MAP = Y(:,2).*Y(:,3).*SV ;
DELTA = (MAP_SP-MAP)./MAP_SP;
CO=Y(:,2).*SV;
