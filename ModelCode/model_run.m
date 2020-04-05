%% Minimal model descriping short-term haemidynamic changes of CVS system
% Code to simulate model when there is no drug 
% 22 June 2019

clear all % clears variable cache
clc  % clears screen

%% Parameter input
get_parameters %call the model parameters file

T=[];
Y=[];
%% Set initial conditions & run simulation
get_initials %call the initial conditions file
options = odeset('RelTol',1E-7);
[t, A]= ode15s(@model_ODEs,[0 2], A0,options,MAP_SP, SV0,HR0,TPR0,kout, beta);
Y=[Y;A];
T = [T; t];
%% Output visualisation
VEC %call store the run output file
get_profiles %call plotting file

