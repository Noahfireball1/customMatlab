%% Formatting
clc
clear
close all
format shortg

%% Figure Parameters
set(0,'DefaultFigureWindowStyle','docked')

%% Pull customMatlab repository

% getting current directory
currentDir = pwd;
cMDir = fullfile(userpath,"customMatlab/");
cd(cMDir)
!git pull
cd(currentDir)



%% Clearing Variables
clc
clear

