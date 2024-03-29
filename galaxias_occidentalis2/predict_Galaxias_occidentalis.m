function [prdData, info] = predict_Galaxias_occidentalis(par, data, auxData)
% file generated by prt_predict

% unpack par, data, auxData
cPar = parscomp_st(par); vars_pull(par);
v2struct(par); v2struct(cPar); v2struct(data); v2struct(auxData);

% compute temperature correction factors
pars_T = T_A;
TC_tp = tempcorr(temp.tp, T_ref, pars_T);
TC_tpm = tempcorr(temp.tpm, T_ref, pars_T);
% TC_tR = tempcorr(temp.tR, T_ref, pars_T);
TC_am = tempcorr(temp.am, T_ref, pars_T);
TC_Ri = tempcorr(temp.Ri, T_ref, pars_T);
TC_tL_f = tempcorr(temp.tL_f, T_ref, pars_T);
TC_tL_m = tempcorr(temp.tL_m, T_ref, pars_T);
TC_LN = tempcorr(temp.LN, T_ref, pars_T);
TC_WwN = tempcorr(temp.WwN, T_ref, pars_T);

% life cycle
pars_tj = [g; k; l_T; v_Hb; v_Hj; v_Hp];
[tau_j, tau_p, tau_b, l_j, l_p, l_b, l_i, rho_j, rho_B, info] = get_tj(pars_tj, f);

if info == 0
  prdData = []; return;
end

% I commented the below out because it seems to be in the wrong place and
% repeated below
% % initial
% [~, aUL] = ode45(@dget_aul, [0; U_Hh; U_Hb], [0 U_E0 1e-10], [], kap, v, k_J, g, L_m);
% L_h = aUL(2,3);
% Lw_h = L_h/ del_MS; % cm, physical length at hatch

% hatch
pars_UE0 = [V_Hb; g; k_J; k_M; v]; % compose parameter vector
U_E0 = initial_scaled_reserve(f, pars_UE0); % d.cm^2, initial scaled reserve
[U_H aUL] = ode45(@dget_aul, [0; U_Hh], [0 U_E0 1e-10], [], kap, v, k_J, g, L_m);
[~, aUL] = ode45(@dget_aul, [0; U_Hh; U_Hb], [0 U_E0 1e-10], [], kap, v, k_J, g, L_m);
L_h = aUL(2,3);
% I changed del_MS to del_M as del_MS is unknown
Lw_h = L_h/ del_M; % cm, physical length at hatch
% Lw_h = L_h/ del_MS; % cm, physical length at hatch

% end of acceleration
L_j = L_m * l_j; % cm, structural length at end of acceleration
Lw_j = L_j/ del_M; % cm, physical length at end acceleration

% puberty
L_p = L_m * l_p; % cm, structural length at puberty
t_p = (tau_p - tau_b)/ k_M/ TC_tp; % d, time since birth at puberty
Lw_p = L_p/ del_M; % cm, physical length at puberty

% ultimate
L_i = L_m * l_i; % cm, ultimate structural length
Lw_i = l_i * L_m/ del_M; % cm, ultimate physical length
Ww_i = L_i^3 * (1 + f * ome); % g, ultimate wet weight 
pars_tm = [g; l_T; h_a/ k_M^2; s_G]; % compose parameter vector
tau_m = get_tm_s(pars_tm, f, l_b); % -, scaled mean life span
a_m = tau_m/ k_M/ TC_am; % d, mean life span

% reproduction
pars_R = [kap; kap_R; g; k_J; k_M; L_T; v; U_Hb; U_Hj; U_Hp]; % compose parameter vector
R_i = TC_Ri * reprod_rate_j(L_i, f, pars_R); % #/d, ultimate reproduction rate

% males
p_Am_m = z_m * p_M/ kap; % J/d.cm^2, {p_Am} spec assimilation flux
E_m_m = p_Am_m/ v; % J/cm^3, reserve capacity [E_m]
g_m = E_G/ (kap* E_m_m); % -, energy investment ratio
m_Em_m = y_E_V * E_m_m/ E_G; % mol/mol, reserve capacity
ome_m = m_Em_m * w_E/ w_V; % -, contribution of reserve to weight
if ~exist('v_Hpm','var'); v_Hpm = v_Hp; end; pars_tjm = [g_m k l_T v_Hb v_Hj v_Hpm];
[tau_jm, tau_pm, tau_bm, l_jm, l_pm, l_bm, l_im, rho_jm, rho_Bm] = get_tj(pars_tjm, f);
L_mm = v/ k_M/ g_m; % cm, max structural length
L_im = l_im * L_mm;  % cm, ultimate structural length
Lw_im = L_im/ del_M; % cm, ultimate physical length
pars_tpm = [g_m k l_T v_Hb v_Hpm]; % pars for males
[tau_pm, tau_bm, l_pm] = get_tp(pars_tpm, f); % - , scaled time, length
L_pm = L_mm * l_pm; % cm, structural length at puberty
t_pm = (tau_pm - tau_bm)/ k_M/ TC_tpm; % d, time since birth at puberty
Lw_pm = L_pm/ del_M; % cm, physical at puberty
Lw_im = f * L_mm/ del_M; % cm, ultimate physical length
Ww_im = L_im^3 * (1 + f * ome_m); % g, ultimate wet weight

% pack to output
prdData.tp = t_p;
prdData.tpm = t_pm;
% prdData.tR = t_R;
prdData.am = a_m;
prdData.Lh = Lw_h;
prdData.Lj = Lw_j;
prdData.Lp = Lw_p;
prdData.Lpm = Lw_pm;
prdData.Li = Lw_i;
prdData.Lim = Lw_im;
prdData.Wwi = Ww_i;
prdData.Wwim = Ww_im;
prdData.Ri = R_i;

% time - length
[tvel, t_j, t_p, t_b, L_j, l_p, l_b] = get_tj(pars_tj, f_tL_f, [], tL_f(:,1)*k_M*TC_tL_f);
tL_f = L_m * tvel(:,4)/ del_M; % cm, physical length

% time - length for males
tvel = get_tj(pars_tjm, f_tL_m, [t_b, f_tL_m*z/z_m, l_b*z/z_m], tL_m(:,1)*k_M*TC_tL_m);
tL_m = L_mm * tvel(:,4)/ del_M; % cm, physical length

% length - yearly fecundity
pars_R = [kap; kap_R; g; k_J; k_M; L_T; v; U_Hb; U_Hj; U_Hp]; % compose parameter vector
LN = TC_LN * 365 * reprod_rate_j(LN(:,1) * del_M, f_LN, pars_R); % #, yearly fecundity

% wet weight - yearly fecundity
pars_R = [kap; kap_R; g; k_J; k_M; L_T; v; U_Hb; U_Hj; U_Hp]; % compose parameter vector
WwN = TC_WwN * 365 * reprod_rate_j((WwN(:,1)/ (1 + f_WwN * ome)).^(1/3), f_WwN, pars_R); % #, yearly fecundity

% length - wet weight
LWw = (LWw(:,1) * del_M).^3 * (1 + f_LWw * ome); % g, wet weight

% pack to output
prdData.tL_f = tL_f;
prdData.tL_m = tL_m;
prdData.LN = LN;
prdData.WwN = WwN;
prdData.LWw = LWw;

