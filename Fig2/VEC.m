%% Define variables from algebric equations as vectors

SV=A(:,1).*(1-beta*log(A(:,2)./HR0));
MAP = A(:,2).*A(:,3).*SV ;
CO=A(:,2).*SV;
HR=A(:,2);
TPR=A(:,3);
