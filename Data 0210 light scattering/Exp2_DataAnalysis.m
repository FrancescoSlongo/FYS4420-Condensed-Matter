%% Experiment 2 - FYS4420
zzz;
% constants
n = 1.33; %refractive indice of water
lambda = 632.8*10^(-9); %[m] laser wavelength
k_b = 1.38*10^(-23); %[J/K]
r = 0.05*10^(-6); %[m] radius of particles
theta = pi/2;
% other parameters
q = n*4*pi/lambda*sin(theta/2);


%% Load data - part 1
data= zeros(192,2,5);
% Import data from
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_15.ASC
filename = 'C:\Users\Marianna\Desktop\Data 0210 light scattering\test_15.ASC';
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
filename = 'C:\Users\Marianna\Desktop\Data 0210 light scattering\test_20.ASC';
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
filename = 'C:\Users\Marianna\Desktop\Data 0210 light scattering\test_25.ASC';
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
filename = 'C:\Users\Marianna\Desktop\Data 0210 light scattering\test_30.ASC';
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
filename = 'C:\Users\Marianna\Desktop\Data 0210 light scattering\test_35.ASC';
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
% guesses (each row refer to a different temperature)
guess = [1.9456*10^(-3), sqrt(0.82529), 0.5*1.0226;
         2.8243*10^(-7), sqrt(0.82413), 0.5*1.1878;
         5.9980*10^(-7), sqrt(0.83529), 0.5*1.3351;
         1.5163*10^(-6), sqrt(0.80922), 0.5*1.5791;
         2.0098*10^(-6), sqrt(0.83104), 0.5*1.7785];
% initialize matrix of parameters obtained from fit
beta = zeros(3,5);
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
    beta(:,kk) = nlinfit(t,G,model, B);
    
    %% Calculating parameters
    % decay time
    T(kk) = 1/beta(3,kk)*0.001; %[s]
    % diffusion contant
    D(kk) = beta(3,kk)/(2*q^2)*1000; %[m^2/s]
    % viscosity
    eta(kk) = k_b*Temp(kk)/(6*pi*r*D(kk)); %[(s*N)/m^2]
end

%% Plot graphs - part 1
figure();
plot(data(17:190,1,1), data(17:190,2,1), '.', 'markersize', 6);
hold on;
plot(data(17:190,1,2), data(17:190,2,2), '.', 'markersize', 6);
plot(data(17:190,1,3), data(17:190,2,3), '.', 'markersize', 6);
plot(data(17:190,1,4), data(17:190,2,4), '.', 'markersize', 6);
plot(data(17:190,1,5), data(17:190,2,5), '.', 'markersize', 6);

xl = xlabel('$\tau [ms]$', 'interpreter', 'latex');
set(xl, 'FontSize', 14);
yl = ylabel('$G(\tau) - 1$', 'interpreter', 'latex');
set(yl, 'FontSize', 14);
grid on;
legend('T = 15', 'T = 20', 'T = 25', 'T = 30', 'T = 35', 'location','northeast');

%% Print results - part 1
beta
T
D
eta

%% Load data - part 2
data_rotaz = zeros(207,2,3);
% Import data from 
%    C:\Users\Marianna\Desktop\Data 0210 light scattering\test_rot_1.ASC
filename = 'C:\Users\Marianna\Desktop\Data 0210 light scattering\test_rot_1.ASC';
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
filename = 'C:\Users\Marianna\Desktop\Data 0210 light scattering\test_rot_2.ASC';
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
filename = 'C:\Users\Marianna\Desktop\Data 0210 light scattering\test_rot_3.ASC';
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

%% Data Analysis - part 1
% guesses (each row refer to a different temperature)
guess_rotaz = [5.9980*10^(-7), sqrt(0.83529), 0.5*1.3351]; % proviamo con quello a 25 gradi per le misure precedenti
% initialize matrix of parameters obtained from fit
beta_rotaz = zeros(3,5);

for jj=1:3
    %% Function definition and data assignement
    % model to fit
    model=@(B,t) (B(1)+B(2).*exp(-B(3).*t));

    % assign values to variables
    t = data_rotaz(15:150,1,jj)'; %[ms]
    G = data_rotaz(15:150,2,jj)'; 

    %initial guess
    B = guess_rotaz(1,:)';

    %fit
    beta_rotaz(:,jj) = nlinfit(t,G,model, B);
    
    %% Calculating parameters
    % decay time
    T_rotaz(jj) = 1/beta_rotaz(3,jj)*0.001; %[s]
end

%% Plot graphs - part 2
figure();
plot(data_rotaz(15:150,1,1), data_rotaz(15:150,2,1), '.', 'markersize', 6);
hold on;
plot(data_rotaz(15:150,1,2), data_rotaz(15:150,2,2), '.', 'markersize', 6);
plot(data_rotaz(15:150,1,3), data_rotaz(15:150,2,3), '.', 'markersize', 6);

xl = xlabel('$\tau [ms]$', 'interpreter', 'latex');
set(xl, 'FontSize', 14);
yl = ylabel('$G(\tau) - 1$', 'interpreter', 'latex');
set(yl, 'FontSize', 14);
grid on;
legend('w = 2.108 Hz', 'w = 4.022 Hz', 'w = 2.998 Hz', 'location','northeast');

figure();
plot(data_rotaz(15:150,1,1)./T_rotaz(1), data_rotaz(15:150,2,1), '.', 'markersize', 6);
hold on;
plot(data_rotaz(15:150,1,2)./T_rotaz(2), data_rotaz(15:150,2,2), '.', 'markersize', 6);
plot(data_rotaz(15:150,1,3)./T_rotaz(3), data_rotaz(15:150,2,3), '.', 'markersize', 6);

xl = xlabel('$\frac{\tau}{T} $', 'interpreter', 'latex');
set(xl, 'FontSize', 14);
yl = ylabel('$G(\tau) - 1$', 'interpreter', 'latex');
set(yl, 'FontSize', 14);
grid on;
legend('w = 2.108 Hz', 'w = 4.022 Hz', 'w = 2.998 Hz', 'location','northeast');


% mettere i fit sopra ai relativi dati??