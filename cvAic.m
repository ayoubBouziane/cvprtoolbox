% cvAic - Akaike Information Criterion
%
% Synopsis
%   aic = cvAic(k, d)
%
% Description
%   Get Akaike Information Criterion under assumption that
%   residual error is normally and independently distributed.
%   argmin_k aic(k) tells the most efficient k. 
%      aic(k) = N * (log(2*pi*sum(d)/N)+1) + 2 * k;
%
% Inputs ([]s are optional)
%   (scalar) k        The number of parameters in the model
%   (vector) d        1 x N vector containing squared residual errors
%
% Outputs ([]s are optional)
%   (scalar) aic      The Akaike Information Criterion value
%
% See also
%   cvBic, cvKic

% Authors
%   Naotoshi Seo <sonots(at)sonots.com>
%
% License
%   The program is free to use for non-commercial academic purposes,
%   but for course works, you must understand what is going inside to use.
%   The program can be used, modified, or re-distributed for any purposes
%   if you or one of your group understand codes (the one must come to
%   court if court cases occur.) Please contact the authors if you are
%   interested in using the program without meeting the above conditions.
%
% Changes
%   10/05/2008  First Edition
function aic = cvAic(k, d)
N = length(d);
RSS = sum(d); % residual sum of square
aic = N * (log(2*pi*RSS/N)+1) + 2 * k;
end
