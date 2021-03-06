function Hd = LPF2(Fs,type)
%TEMP Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 8.2 and the DSP System Toolbox 8.5.
% Generated on: 12-Jan-2014 18:48:43

% Chebyshev Type II Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
%Fs = 600;  % Sampling Frequency

Fpass = 30;          % Passband Frequency
Fstop = 40;          % Stopband Frequency
Apass = 1;           % Passband Ripple (dB)
Astop = 80;          % Stopband Attenuation (dB)
match = 'stopband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY2 method.
h  = fdesign.lowpass(Fpass, Fstop, Apass, Astop, Fs);
if(type==1)
Hd = design(h, 'cheby2', 'MatchExactly', match);
end

if(type==2)
Hd = design(h, 'equiripple');
end

% [EOF]
