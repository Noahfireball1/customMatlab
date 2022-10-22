% FILENAME: quatProd.m
% FILETYPE: function
% DESCRIPTION: quatProd performs a 1st type quaternion multiplication using
% q and p
%
% INPUTS:
%   - q: 4 x 1 quaternion array in the order:
%           1. scalar
%           2. 1st axis
%           3. 2nd axis
%           4. 3rd axis
%   - p: 4 x 1 quaternion array in the order:
%           1. scalar
%           2. 1st axis
%           3. 2nd axis
%           4. 3rd axis
% OUTPUTS:
%   - r: 1st type quaternion product of q and p
%
% AUTHOR(S): Noah Miller (nsm0014@auburn.edu)
% DATE: 9/15/2022

function r = quatProd(q,p)

r = [(q(1)*p(1) - dot(q(2:4),p(2:4)));...
    (q(1)*p(2:4) + p(1)*q(2:4) + cross(q(2:4),p(2:4)))];

end

