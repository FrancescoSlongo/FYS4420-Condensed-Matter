%% Script for plotting the data in the PID control experience
zzz
load('task_3_temp_check.mat');
% I create the figure for the task 3
figure();
plot(cm, T, '.', 'markersize', 6,'color', 'r');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:125:2100);
set(axs1, 'ytick', 295.97:0.035:296.2);
set(axs1, 'xlim', [0 2100]);
set(axs1, 'ylim', [295.97 296.2]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Zoom: I create new axes
axes('position', [.6 .2 .2 .2])
box on
% I Plot the same graph but smaller
plot(cm(1:200), T(1:200), '.','markersize',6,'color', 'r');
%% I plot the figure for task 4 - first attempt
clc;
clear variables;
figure();
load('task_4_temp_check.mat');
plot(cm, T, '.', 'markersize', 6,'color', 'r');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:650:10500);
set(axs1, 'ytick', 304.5:2:324);
set(axs1, 'xlim', [0 10500]);
set(axs1, 'ylim', [304.5 324]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Zoom: I create new axes
axes('position', [.6 .2 .2 .2])
box on
% I Plot the same graph but smaller
plot(cm(10000:11405), T(10000:11405), '.','markersize',6,'color', 'r');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[8600, 10200] , 'ylim', [322.2, 322.8])
%% I plot the figure for task 4 - second attempt
clc;
clear variables;
figure();
load('task_4_1_temp_check.mat');
plot(cm, T, '.', 'markersize', 6,'color', 'r');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:650:11000);
set(axs1, 'ytick', 301:2:325);
set(axs1, 'xlim', [0 11000]);
set(axs1, 'ylim', [301 325]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Zoom: I create new axes
axes('position', [.6 .2 .2 .2])
box on
% I Plot the same graph but smaller
plot(cm(10000:12000), T(10000:12000), '.','markersize',6,'color', 'r');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[8500, 10850] , 'ylim', [323.76, 324.05])
%% I plot the figure for task 5
clc;
clear variables;
figure();
load('task_5_temp_check_1.mat');
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on
plot(cm(30:31), [0, 1000], 'color', 'b', 'LineStyle','--', 'linewidth', 1.5);
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:20:190);
set(axs1, 'ytick', 297:0.25:298.8);
set(axs1, 'xlim', [0 190]);
set(axs1, 'ylim', [297 298.8]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Zoom: I create new axes
axes('position', [.6 .2 .15 .2])
box on
% I Plot the same graph but smaller
plot(cm(35:60), T(35:60), '.','markersize',6,'color', 'r');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[20, 34] , 'ylim', [298.5, 298.73])
%% I plot the figure for task 9
clc;
clear variables;
figure();
load('task_9_pid_control.mat');
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
plot(cm, Tref,'color', 'b');
T1 = 3.941;
T2 = 188.304;
Tau = 1/(1/3 * (1/T1+1/T2));
theo = 296.1 + 7.05*((1-1.5*Tau/(T1+T2))*(cm/Tau).^2 - cm/Tau - 1).*exp(-cm/Tau) + 7.05;
hold on;
plot(cm, theo,'color', 'g','linewidth', 1.5);
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:50:680);
set(axs1, 'ytick', 297:0.75:307);
set(axs1, 'xlim', [0 680]);
set(axs1, 'ylim', [297 307]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','Theorical model','location','northeast');
% Zoom: I create new axes
axes('position', [.6 .2 .25 .25])
box on
% I Plot the same graph but smaller
plot(cm(700:1000), T(700:1000), '.','markersize',6,'color', 'r');
hold on
plot(cm(700:1000), Tref(700:1000),'color', 'b');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[450, 607] , 'ylim', [303.1, 303.21])
%% I plot the figure for task 10
clc;
clear variables;
figure();
load('task_10_1_pid_control.mat');
r10 = plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
b10 = plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:100:1100);
set(axs1, 'ytick', 299.5:1.5:320);
set(axs1, 'xlim', [0 1100]);
set(axs1, 'ylim', [299.5 320]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','location','northwest');
%% I plot the figure for task 11
clc;
clear variables;
figure();
load('task_11_1_pid_control.mat');
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:100:904);
set(axs1, 'ytick', 302.5:1.5:320);
set(axs1, 'xlim', [0 940]);
set(axs1, 'ylim', [302.5 320]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','location','northwest');
%% I plot the figure for task 12 
clc;
clear variables;
figure();
load('task_12_pid_control.mat');
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:100:1075);
set(axs1, 'ytick', 302:1:313.5);
set(axs1, 'xlim', [0 1075]);
set(axs1, 'ylim', [302 313.5]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','location','northwest');
%% I plot the figure for task 13
clc;
clear variables;
figure();
load('task_13_pid_control.mat');
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:50:667);
set(axs1, 'ytick', 301.9:0.2:303.57);
set(axs1, 'xlim', [0 667]);
set(axs1, 'ylim', [301.9 303.57]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 12);
yl = ylabel('T [K]', 'interpreter', 'latex');
set(yl, 'FontSize', 12);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','location','southwest');
% Zoom: I create new axes
axes('position', [.6 .2 .25 .25])
box on
% I Plot the same graph but smaller
plot(cm(700:800), T(700:800), '.','markersize',6,'color', 'r');
hold on
plot(cm(700:800), Tref(700:800),'color', 'b');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[450, 520] , 'ylim', [302.8, 303.6]);