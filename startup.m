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
fprintf('Pulling latest changes from github.com/Noahfireball1/customMatlab/...\n')
!git pull
cd(currentDir)
addpath(cMDir)



%% Clearing Variables
clear

