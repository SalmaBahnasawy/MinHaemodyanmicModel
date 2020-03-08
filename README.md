# SysModel
This is the Matlab code to run the model and simulate the different haemodynamic profiles.

##Content
- model_run.m : model run file
- model_ode.m : model structure file
- get_initials.m: define the initial conditions
- get_parameters.m: define the system and drug parameters
- vec.m: store the model output variables
- get_profilesm: plot the haemodynamic profiles

##How to use
- To run the model, run model_run.m file in MATLAB
- Change the initial conditons from get_initials.m file
- Add drug PK/PD parameter in get_parameters.m file
