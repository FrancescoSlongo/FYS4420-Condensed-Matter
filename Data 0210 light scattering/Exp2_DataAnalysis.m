%% Experiment 2 - FYS4420
zzz;
% constants
n = 1.33; %refractive indice of water
lambda = 632.8*10^(-9); %[m] laser wavelength
k_b = 1.38*10^(-23); %[J/K]
r = 0.05*10^(-6); %[m] radius of particles
theta = pi/2;
dtheta = 3/180*pi*0.5;
% other parameters
q = n*4*pi/lambda*sin(theta/2);
dq = n*2*pi/lambda*cos(theta/2)*dtheta;

%% Load data - part 1
data= zeros(192,2,5);
% Import data from
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_15.ASC
filename = 'C:\Users\Dante Slongo\Desktop\FRANCESCO\Università fisica\Terzo anno\Course_Projects\FYS4420-Experimental-techniques-in-condensed-matter-\Data 0210 light scattering\test_15.ASC';
delimiter = '\t';
startRow = [26,406];
endRow = [216,406];
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow(1)-1, 'WhiteSpace', '', 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    textscan(fileID, '%[^\n\r]', startRow(block)-1, 'WhiteSpace', '', 'ReturnOnError', false);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end
fclose(fileID);
data(:,:,1) = [dataArray{1:end-1}]; % create variable
clearvars filename delimiter startRow endRow formatSpec fileID block dataArrayBlock col dataArray ans;
% ------------------------------------------------------------------------
% Import data from
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_20.ASC
filename = 'C:\Users\Dante Slongo\Desktop\FRANCESCO\Università fisica\Terzo anno\Course_Projects\FYS4420-Experimental-techniques-in-condensed-matter-\Data 0210 light scattering\test_20.ASC';
delimiter = '\t';
startRow = [26,406];
endRow = [216,406];
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow(1)-1, 'WhiteSpace', '', 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    textscan(fileID, '%[^\n\r]', startRow(block)-1, 'WhiteSpace', '', 'ReturnOnError', false);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end
fclose(fileID);
data(:,:,2) = [dataArray{1:end-1}]; % create variable
clearvars filename delimiter startRow endRow formatSpec fileID block dataArrayBlock col dataArray ans;
% ------------------------------------------------------------------------
% Import data from
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_25.ASC
filename = 'C:\Users\Dante Slongo\Desktop\FRANCESCO\Università fisica\Terzo anno\Course_Projects\FYS4420-Experimental-techniques-in-condensed-matter-\Data 0210 light scattering\test_25.ASC';
delimiter = '\t';
startRow = [26,406];
endRow = [216,406];
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow(1)-1, 'WhiteSpace', '', 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    textscan(fileID, '%[^\n\r]', startRow(block)-1, 'WhiteSpace', '', 'ReturnOnError', false);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end
fclose(fileID);
data(:,:,3) = [dataArray{1:end-1}]; % create variable
clearvars filename delimiter startRow endRow formatSpec fileID block dataArrayBlock col dataArray ans;
% ------------------------------------------------------------------------
% Import data from
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_30.ASC
filename = 'C:\Users\Dante Slongo\Desktop\FRANCESCO\Università fisica\Terzo anno\Course_Projects\FYS4420-Experimental-techniques-in-condensed-matter-\Data 0210 light scattering\test_30.ASC';
delimiter = '\t';
startRow = [26,406];
endRow = [216,406];
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow(1)-1, 'WhiteSpace', '', 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    textscan(fileID, '%[^\n\r]', startRow(block)-1, 'WhiteSpace', '', 'ReturnOnError', false);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end 
fclose(fileID);
data(:,:,4) = [dataArray{1:end-1}]; % create variable
clearvars filename delimiter startRow endRow formatSpec fileID block dataArrayBlock col dataArray ans;
% ------------------------------------------------------------------------
% Import data from
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_35.ASC
filename = 'C:\Users\Dante Slongo\Desktop\FRANCESCO\Università fisica\Terzo anno\Course_Projects\FYS4420-Experimental-techniques-in-condensed-matter-\Data 0210 light scattering\test_35.ASC';
delimiter = '\t';
startRow = [26,406];
endRow = [216,406];
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow(1)-1, 'WhiteSpace', '', 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    textscan(fileID, '%[^\n\r]', startRow(block)-1, 'WhiteSpace', '', 'ReturnOnError', false);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end
fclose(fileID);
data(:,:,5) = [dataArray{1:end-1}]; % create variable
clearvars filename delimiter startRow endRow formatSpec fileID block dataArrayBlock col dataArray ans;
% ------------------------------------------------------------------------

%% Data Analysis - part 1
% temperatures
Temp = 273.15 + [15,20,25,30,35]; 
dTemp = 0.03*0.3;
% guesses (each row refer to a different temperature)
guess = [1.9456*10^(-3), sqrt(0.82529), 0.5*1.0226;
         2.8243*10^(-7), sqrt(0.82413), 0.5*1.1878;
         5.9980*10^(-7), sqrt(0.83529), 0.5*1.3351;
         1.5163*10^(-6), sqrt(0.80922), 0.5*1.5791;
         2.0098*10^(-6), sqrt(0.83104), 0.5*1.7785];
% initialize matrix of parameters obtained from fit
beta = zeros(3,5);
dbeta = zeros(3,5);
R = zeros(1,5);
J = zeros(3,3,5);
Cov = zeros(3,3,5);
T = zeros(1,5);
D = zeros(1,5);
eta = zeros(1,5);

for kk=1:5
    %% Function definition and data assignement
    % model to fit
    model=@(B,t) (B(1)+B(2).*exp(-B(3).*t));

    % assign values to variables
    t = data(17:190,1,kk)'; %[ms]
    G = data(17:190,2,kk)'; 

    %initial guess
    B = guess(kk,:)';

    %fit
    [beta(:,kk), R, J, Cov(:,:,kk)] = nlinfit(t,G,model, B);
    dbeta(:,kk) = sqrt(diag(Cov(:,:,kk)));
    %% Calculating parameters
    % decay time
    T(kk) = 1/beta(3,kk)*0.001; %[s]
    dT(kk) = 1/dbeta(3,kk)*0.001; %[s]
    % diffusion contant
    D(kk) = beta(3,kk)/(2*q^2)*1000; %[m^2/s]
    dD(kk) = sqrt((dbeta(3,kk)/(2*q^2)*1000)^2+(2*beta(3,kk)/(2*q^3)*1000*dq)^2); %[m^2/s]
    % viscosity
    eta(kk) = k_b*Temp(kk)/(6*pi*r*D(kk)); %[(s*N)/m^2]
    deta(kk) = sqrt((k_b*Temp(kk)/(6*pi*r*D(kk)^2)*dD(kk))^2 + (k_b*dTemp/(6*pi*r*D(kk)))^2);
end
%% Chi squared
Chi_1(1) = 1/(length(data(17:190,2,1))-3)*sum((data(17:190,2,1) - (beta(1,1) + beta(2,1)*exp(-beta(3,1)*data(17:190,1,1)))).^2);
ddata = sqrt(Chi_1(1));
for i = 2 : 5
    Chi_1(i) = 1/(length(data(17:190,2,i))-3)*sum((data(17:190,2,i) - (beta(1,i) + beta(2,i)*exp(-beta(3,i)*data(17:190,1,i)))).^2./ddata^2);
end
%% Plot graphs - part 1
figure();
plot(data(17:190,1,1), data(17:190,2,1), '.', 'markersize', 6);
hold on;
for i = 2 : 5
    plot(data(17:190,1,i), data(17:190,2,i), '.', 'markersize', 6);
end
for i = 1 : 5
    plot(data(17:190,1,i), beta(1,i) + beta(2,i)*exp(-beta(3,i)*data(17:190,1,i)));
end
xl = xlabel('$\tau [ms]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
set(gca, 'XScale', 'log')
yl = ylabel('$G(\tau) - 1$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
grid on;
legend('T = 15 °C', 'T = 20 °C', 'T = 25 °C', 'T = 30 °C', 'T = 35 °C', 'location','northeast');

%% Print results - part 1
beta
dbeta
T
D
dD
eta
deta

%% Load data - part 2
data_rotaz = zeros(207,2,3);
% Import data from 
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_rot_1.ASC
filename = 'C:\Users\Dante Slongo\Desktop\FRANCESCO\Università fisica\Terzo anno\Course_Projects\FYS4420-Experimental-techniques-in-condensed-matter-\Data 0210 light scattering\test_rot_1.ASC';
delimiter = '\t';
startRow = 26;
endRow = 232;
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow-1, 'WhiteSpace', '', 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow-startRow+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
fclose(fileID);
data_rotaz(:,:,1) = [dataArray{1:end-1}];
clearvars filename delimiter startRow endRow formatSpec fileID dataArray ans;
% ------------------------------------------------------------------------
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_rot_2.ASC
filename = 'C:\Users\Dante Slongo\Desktop\FRANCESCO\Università fisica\Terzo anno\Course_Projects\FYS4420-Experimental-techniques-in-condensed-matter-\Data 0210 light scattering\test_rot_2.ASC';
delimiter = '\t';
startRow = 26;
endRow = 232;
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow-1, 'WhiteSpace', '', 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow-startRow+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
fclose(fileID);
data_rotaz(:,:,2) = [dataArray{1:end-1}];
clearvars filename delimiter startRow endRow formatSpec fileID dataArray ans;
% ------------------------------------------------------------------------
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_rot_3.ASC
filename = 'C:\Users\Dante Slongo\Desktop\FRANCESCO\Università fisica\Terzo anno\Course_Projects\FYS4420-Experimental-techniques-in-condensed-matter-\Data 0210 light scattering\test_rot_3.ASC';
delimiter = '\t';
startRow = 26;
endRow = 232;
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
textscan(fileID, '%[^\n\r]', startRow-1, 'WhiteSpace', '', 'ReturnOnError', false);
dataArray = textscan(fileID, formatSpec, endRow-startRow+1, 'Delimiter', delimiter, 'ReturnOnError', false, 'EndOfLine', '\r\n');
fclose(fileID);
data_rotaz(:,:,3) = [dataArray{1:end-1}];
clearvars filename delimiter startRow endRow formatSpec fileID dataArray ans;

%% Data Analysis - part 2
% guesses (each row refer to a different temperature)
guess_rotaz = [5.9980*10^(-7), sqrt(0.83529), 0.5*1.3351]; % proviamo con quello a 25 gradi per le misure precedenti
% initialize matrix of parameters obtained from fit
beta_rotaz = zeros(3,3);
dbeta_rotaz = zeros(3,3);
% Sperimental angular velocity
N = 100; % number of spins;
Period = [298.1, 156.0, 209.6];
dPeriod = [0.5, 0.6, 0.5];
omega_measured = 2*pi*N./Period;
domega_measured = 2*pi*N./Period.^2.*dPeriod;
for jj=1:3
    %% Function definition and data assignement
    % model to fit
    model=@(B,t) (B(1)+B(2).*(sin(B(3).*t)./(B(3).*t)).^2);
    %model=@(B,t) (B(1)+B(2).*exp(-B(3).*t));

    % assign values to variables
    t = data_rotaz(15:150,1,jj)'; %[ms]
    G = data_rotaz(15:150,2,jj)'; 

    %initial guess
    B = guess_rotaz(1,:)';

    %fit
    [beta_rotaz(:,jj), R, J, Cov_rotaz(:,:,kk)] = nlinfit(t,G,model, B);
    dbeta_rotaz(:,jj) = sqrt(diag(Cov_rotaz(:,:,kk)));
end

%% Plot graphs - part 2
figure();
plot(data_rotaz(15:150,1,1), data_rotaz(15:150,2,1), '.', 'markersize', 6);
hold on;
plot(data_rotaz(15:150,1,2), data_rotaz(15:150,2,2), '.', 'markersize', 6);
plot(data_rotaz(15:150,1,3), data_rotaz(15:150,2,3), '.', 'markersize', 6);

for i = 1 : 3
    plot(data_rotaz(15:150,1,i), beta_rotaz(1,i)+beta_rotaz(2,i).*(sin(beta_rotaz(3,i).*data_rotaz(15:150,1,i))./(beta_rotaz(3,i).*data_rotaz(15:150,1,i))).^2);
    %plot(data_rotaz(15:150,1,1), beta_rotaz(1,i) + beta_rotaz(2,i)*exp(-beta_rotaz(3,i)*data_rotaz(15:150,1,i)));
end

%% Chi quadro
for i = 1 : 3
    Chi_2(i) = 1/(length(data_rotaz(15:150,1,i))-3)*sum(data_rotaz(15:150,1,i) - (beta_rotaz(1,i)+beta_rotaz(2,i).*(sin(beta_rotaz(3,i).*data_rotaz(15:150,1,i))./(beta_rotaz(3,i).*data_rotaz(15:150,1,i))).^2).^2./ddata^2);
end

xl = xlabel('$\tau [ms]$', 'interpreter', 'latex');
set(xl, 'FontSize', 14);
yl = ylabel('$G(\tau) - 1$', 'interpreter', 'latex');
set(gca, 'XScale', 'log')
set(yl, 'FontSize', 14);
grid on;
legend('w = 2.108 Hz', 'w = 4.022 Hz', 'w = 2.998 Hz', 'location','northeast');

figure();
plot(data_rotaz(15:150,1,1).*beta_rotaz(3,1), data_rotaz(15:150,2,1), '.', 'markersize', 6);
hold on;
plot(data_rotaz(15:150,1,2).*beta_rotaz(3,2), data_rotaz(15:150,2,2), '.', 'markersize', 6);
plot(data_rotaz(15:150,1,3).*beta_rotaz(3,3), data_rotaz(15:150,2,3), '.', 'markersize', 6);

xl = xlabel('$\frac{\tau}{T} $', 'interpreter', 'latex');
set(xl, 'FontSize', 14);
yl = ylabel('$G(\tau) - 1$', 'interpreter', 'latex');
set(gca, 'XScale', 'log')
set(yl, 'FontSize', 14);
grid on;
legend('w = 2.108 Hz', 'w = 4.022 Hz', 'w = 2.998 Hz', 'location','northeast');


% mettere i fit sopra ai relativi dati??