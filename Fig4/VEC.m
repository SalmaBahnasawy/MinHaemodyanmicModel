%% Define variables from algebric equations as vectors

SV=Y(:,1).*(1-0.22*log(Y(:,2)./HR0));
MAP = Y(:,2).*Y(:,3).*SV ;
HR=Y(:,2);
