function Hd = HPF(Fs,type)
%HPF Returns a discrete-time filter object.

%
% MATLAB Code
% Generated by MATLAB(R) 7.13 and the Signal Processing Toolbox 6.16.
%
% Generated on: 24-Oct-2013 21:34:24
%

% Chebyshev Type II Highpass filter designed using FDESIGN.HIGHPASS.

% All frequency values are in Hz.
%Fs = 500;  % Sampling Frequency

Fstop = 0.5;         % Stopband Frequency
Fpass = 1;           % Passband Frequency
Astop = 60;          % Stopband Attenuation (dB)
Apass = 1;           % Passband Ripple (dB)
match = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY2 method.
h  = fdesign.highpass(Fstop, Fpass, Astop, Apass, Fs);
if(type==1)
Hd = design(h, 'cheby2', 'MatchExactly', match);
end
if(type==2)
Hd = design(h, 'equiripple');
end

% [EOF]