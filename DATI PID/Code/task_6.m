 %% Preparazione dati
zzz;
% carica dati
load('task_5.mat');
% parametri
t = 0.6*[1:length(T)]; %[s]
E = 3.5; % [V]
eps = 18; % [s] +- 1s
H0 = 8.7465; %[T/V] dati merdosi!
T = T - 296.0879 * ones(1, length(T));

%% Trovare il punto di massimo
figure();
plot(t,T);

%% coordinate del punto di massimo
rp = 2.62816; % trovare a occhio e inserire a mano
tp = 27.6;

%% Funzione rp = f(T12)
% vettore con T12
T12 = [1,0:0.1:400]; 
% funzione rp = f(T12)
rp_func = E*H0.*exp(-tp./T12).*(exp(eps./T12) - 1);
% plot della funzione con la retta di intersezione
figure();
plot(T12,rp_func);
hold on
plot(T12,rp.*ones(1, length(T12)));

%% Trovare a occhio T1 e T2
T1 = 0;
T2 = 0;

% funzione fittata per trovare il picco
%r = (E*H(0)/(T1-T2)).*(-T1.*e.^(-t./T1).*(1-e^(eps/T1)) + T2.*e.^(-t./T2).*(1-e^(eps/T2)));