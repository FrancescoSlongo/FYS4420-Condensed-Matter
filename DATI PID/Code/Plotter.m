%% Script for plotting the data in the PID control experience
zzz
load('task_3_temp_check.mat');
cm = cm*0.6;
% I create the figure for the task 3
figure();
load('task_3_temp_check.mat');
plot(cm, T, '.', 'markersize', 6,'color', 'r');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:75:1260);
set(axs1, 'ytick', 295.97:0.035:296.2);
set(axs1, 'xlim', [0 1260]);
set(axs1, 'ylim', [295.97 296.2]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
% Grid
grid on;
% Zoom: I create new axes
axes('position', [.68 .17 .2 .2])
box on
% I Plot the same graph but smaller
plot(cm(1:200), T(1:200), '.','markersize',6,'color', 'r');
%% I plot the figure for task 4 - first attempt
clc;
clear variables;
figure();
load('task_4_temp_check.mat');
cm = cm*0.6;
plot(cm, T, '.', 'markersize', 6,'color', 'r');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:350:3780);
set(axs1, 'ytick', 304.5:2:324);
set(axs1, 'xlim', [0 3780]);
set(axs1, 'ylim', [304.5 324]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
% Grid
grid on;
% Zoom: I create new axes
axes('position', [.6 .2 .2 .2])
box on
% I Plot the same graph but smaller
plot(cm(10000:11405), T(10000:11405), '.','markersize',6,'color', 'r');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[3070, 3680] , 'ylim', [322.2, 322.8])
%% I plot the figure for task 4 - second attempt
clc;
clear variables;
figure();
load('task_4_1_temp_check.mat');
cm = cm*0.6;
plot(cm, T, '.', 'markersize', 6,'color', 'r');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:500:6600);
set(axs1, 'ytick', 301:2.5:325);
set(axs1, 'xlim', [0 6600]);
set(axs1, 'ylim', [301 325]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
% Grid
grid on;
% Zoom: I create new axes
axes('position', [.6 .2 .2 .2])
box on
% I Plot the same graph but smaller
plot(cm(10000:12000), T(10000:12000), '.','markersize',6,'color', 'r');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[5100, 6510] , 'ylim', [323.76, 324.05])
%% I plot the figure for task 5
clc;
clear variables;
figure();
load('task_5_temp_check_1.mat');
cm = cm*0.6;
plot(cm, T, '.', 'markersize', 6,'color', 'r');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:10:114);
set(axs1, 'ytick', 297:0.25:298.8);
set(axs1, 'xlim', [0 114]);
set(axs1, 'ylim', [297 298.8]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
% Grid
grid on;
% Zoom: I create new axes
axes('position', [.6 .2 .15 .2])
box on
% I Plot the same graph but smaller
plot(cm(35:60), T(35:60), '.','markersize',6,'color', 'r');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[12, 20] , 'ylim', [298.5, 298.73])
%% I plot the figure for task 9
clc;
clear variables;
figure();
load('task_9_pid_control.mat');
cm = cm*0.6;
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:30:408);
set(axs1, 'ytick', 297:0.75:307);
set(axs1, 'xlim', [0 408]);
set(axs1, 'ylim', [297 307]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','location','northeast');
% Zoom: I create new axes
axes('position', [.6 .2 .25 .25])
box on
% I Plot the same graph but smaller
plot(cm(700:1000), T(700:1000), '.','markersize',6,'color', 'r');
hold on
plot(cm(700:1000), Tref(700:1000),'color', 'b');
% I set the limits
zoom_axes1 = gca;
set(zoom_axes1, 'xlim',[270, 402] , 'ylim', [303.1, 303.21])
%% I plot the figure for task 10
clc;
clear variables;
figure();
load('task_10_1_pid_control.mat');
cm = cm*0.6;
r10 = plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
b10 = plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:50:660);
set(axs1, 'ytick', 299.5:1.5:320);
set(axs1, 'xlim', [0 660]);
set(axs1, 'ylim', [299.5 320]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','location','northwest');
%% I plot the figure for task 11
clc;
clear variables;
figure();
load('task_11_1_pid_control.mat');
cm = cm*0.6;
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:60:560);
set(axs1, 'ytick', 302.5:1.5:320);
set(axs1, 'xlim', [0 560]);
set(axs1, 'ylim', [302.5 320]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','location','northwest');
%% I plot the figure for task 12 
clc;
clear variables;
figure();
load('task_12_pid_control.mat');
cm = cm*0.6;
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:50:645);
set(axs1, 'ytick', 302:1:313.5);
set(axs1, 'xlim', [0 645]);
set(axs1, 'ylim', [302 313.5]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
% Grid
grid on;
% Legend
legend('Data','Reference temperature','location','northwest');
%% I plot the figure for task 13
clc;
clear variables;
figure();
load('task_13_pid_control.mat');
cm = cm*0.6;
plot(cm, T, '.', 'markersize', 6,'color', 'r');
hold on;
plot(cm, Tref,'color', 'b');
% I get the axes and put some labels
axs1 = gca;
set(axs1, 'xtick', 0:30:400);
set(axs1, 'ytick', 301.9:0.2:303.57);
set(axs1, 'xlim', [0 400]);
set(axs1, 'ylim', [301.9 303.57]);
xl = xlabel('$t [s]$', 'interpreter', 'latex');
set(xl, 'FontSize', 16);
yl = ylabel('$T [K]$', 'interpreter', 'latex');
set(yl, 'FontSize', 16);
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
set(zoom_axes1, 'xlim',[270, 312] , 'ylim', [302.8, 303.6]);