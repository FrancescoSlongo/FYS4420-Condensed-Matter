%% Data analysis for EXP 1 - PID Control
zzz
%% Task 3
load('task_3_temp_check.mat','T');
Troom = mean(T(1,1:2853));
dTroom = std(T(1,1:2853));
clear T;

%% Task 4 (4.1 and 4.2)
load('task_4_temp_check','T');
Tinf_1 = mean(T(1,8000:10000));
dTinf_1 = std(T(1,8000:10000));
clear T;

load('task_4_1_temp_check','T');
Tinf_2 = mean(T(1,6000:10800));
dTinf_2 = std(T(1,6000:10800));
clear T;

%% Task 5-6 (calcolo H0, T1, T2)
load('task_5_temp_check_1.mat');
% parametri
Vpulse = 3.5; % [V]
Vstep = 3;
eps = 18; % [s] +- 1s
T = T - Troom * ones(1, length(T));
H0_1 = (Tinf_1-Troom)/Vstep; %[T/V] dati merdosi!
H0_2 = (Tinf_2-Troom)/Vstep; 
dH0_1 = sqrt(dTinf_1^2 + dTroom^2)/Vstep; 
dH0_2 = sqrt(dTinf_2^2 + dTroom^2)/Vstep; 


% Trovare il punto di massimo
figure();
plot(cm(1,1:500),T);

% coordinate del punto di massimo
rp = 2.62816; % trovare a occhio e inserire a mano
tp = 27.05;

% Funzione rp = f(T12)
% vettore con T12
T12 = [1,0:0.1:400]; 
% funzione rp = f(T12)
rp_func = Vpulse*H0_1.*exp(-tp./T12).*(exp(eps./T12) - 1);
% plot della funzione con la retta di intersezione
figure();
plot(T12,rp_func);
hold on
plot(T12,rp.*ones(1, length(T12)));

%% Trovare a occhio T1 e T2
T1 = 190.81;
T2 = 3.6977;

%% Task 7
P=(1/3)*((T1+T2)^2)/(T1*T2)-1;
I=(1/27)*((T1+T2)^3)/((T1*T2)^2);
Kp=P/H0_1;
Ki=I/H0_1;