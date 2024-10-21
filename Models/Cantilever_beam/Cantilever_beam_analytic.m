% Cantilever beam example
clearvars ; close all ; clc ; beep off ;

% USE VESCOVINI NOTES FOR THIS PART


w = 0.2 ; % [m] Beam width
t = 0.02 ; % [m] Beam thickness
L = 1 ; % [m] Beam length

E = 2e11 ; % [Pa] Young's modulus - Steel (Ansys default)

I = w * t^3 / 12 ; % Beam section moment of inertia

EI = E*I ; % Beam flexural stiffness

F = 1000 ; % [N] Applied force on tip

delta_max = F * L^3 / (3*EI) ; % [m] Max deflection (at tip of beam)