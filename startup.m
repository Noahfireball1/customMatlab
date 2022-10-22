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
if ~exist(fullfile(userpath,"customMatlab/"),'dir')
    fprintf('customMatlab/ repository non-existent, cloning...\n')
    cd(userpath)
    !git clone git@github.com:Noahfireball1/customMatlab.git
    cd(currentDir)
    cMDir = fullfile(userpath,"customMatlab/");
else
    cMDir = fullfile(userpath,"customMatlab/");
    cd(cMDir)
    fprintf('Pulling latest changes from github.com/Noahfireball1/customMatlab/...\n')
    !git pull
    cd(currentDir)
end

addpath(cMDir)



%% Clearing Variables
clear

