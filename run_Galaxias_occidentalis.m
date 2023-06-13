close all;
global pets

pets = {'Galaxias_occidentalis'};
check_my_pet(pets);

estim_options('default');

% default = 5e2
estim_options('max_step_number', 5e3);
estim_options('max_fun_evals',5e3);

% default = 1e-4
estim_options('tol_simplex', 1e-4);

% default = 1e-4
estim_options('tol_fun', 1e-4);

estim_options('pars_init_method', 2);
estim_options('results_output', 5);
estim_options('method', 'no');

estim_pars;

