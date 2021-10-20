I = pi/4*(10^4-9^4); % R = 10mm, d = 9mm pipe
E = 7.03*10^7;       % Aluminum 7.03*10^10 [N/m^2] = 7.03*10^7 [mN/mm^2]
A = pi*(10^2-9^2);
L = 1000;            % L = 1000 [mm]

EA   = E*A/L;
EI12 = 12*E*I/L^3;
EI6  =  6*E*I/L^2;
EI4  =  4*E*I/L;
EI2  =  2*E*I/L;

KB = [ EA  0     0   -EA  0     0
       0   EI12  EI6  0  -EI12  EI6
       0   EI6   EI4  0  -EI6   EI2
      -EA  0     0    EA  0     0
       0  -EI12 -EI6  0   EI12 -EI6
       0   EI6   EI2  0  -EI6   EI4 ];

u = [ 0
      0
      0
      0.1
      0
      0 ];

f = KB*u
