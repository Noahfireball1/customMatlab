% FILENAME: genAngleAxis.m
% FILETYPE: function
% DESCRIPTION: genAngleAxis produces a Direction Cosine Matrix (DCM) using user
% specified units, rotation angles, and rotation sequence
% 
% INPUTS:
%   - units: The units ('deg' or ' rad') of the provided rotation angles
%   - rotations: Angles that correspond to provided rotation sequence
%   - sequence: Order of rotation corresponding to the 3 axes (1,2, or 3)
%           where x is normally 1. y is normally 2, and z is normally 3
% OUTPUTS:
%   - DCM: Matrix that is used to bring a vector to another frame
%         EX: V_b = DCM*V_a
%
% AUTHOR(S): Noah Miller (nsm0014@auburn.edu)
% DATE: 9/15/2022

function [theta_deg,theta_rad,k] = genAngleAxis(DCM)

theta_deg = acosd((trace(DCM)-1)/2);
theta_rad = acos((trace(DCM)-1)/2);

k = [(DCM(3,2) - DCM(2,3));(DCM(1,3) - DCM(3,1));(DCM(2,1) - DCM(1,2))]./(2*sind(theta_deg));

end