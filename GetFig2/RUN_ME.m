%% Minimal model descriping short-term haemidynamic changes of CVS system
% Code to get figure2

clear all % clears variable cache
clc  % clears screen

%% Parameter input
Infusion_parameters

%% Set initial conditions & run simulation
get_initials
options = odeset('RelTol',1E-7);
%% Drug acting on SV
[t, A]= ode15s(@PD_ODEs,[0 2], A0,options,SP_MAP0, SV0,HR0, TPR0, KOUT,beta,Imax,IC50,kin,k);

% Output visualisation
VEC
PAPER
%% Drug acting on HR
[t, A]= ode15s(@PD_ODEs2,[0 2], A0,options,SP_MAP0, SV0,HR0, TPR0, KOUT,beta,Imax,IC50,kin,k);

% Output visualisation
VEC
PAPER2
%% TPR
[t, A]= ode15s(@PD_ODEs3,[0 2], A0,options,SP_MAP0, SV0,HR0, TPR0, KOUT,beta,Imax,IC50,kin,k);

% Output visualisation
VEC
PAPER3
