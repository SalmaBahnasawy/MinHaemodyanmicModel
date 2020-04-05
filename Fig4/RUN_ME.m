%% Minimal model descriping short-term haemidynamic changes of CVS system
% Code to get figure 4

% clear all % clears variable cache
clear all
clc  % clears screen


% Set initial conditions & run simulation
run_ode_doses50
run_ode_doses80

paper_overlay_meto
