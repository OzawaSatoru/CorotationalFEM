I = pi/4*(10^4-9^4); % R = 10mm, d = 1mm pipe
E = 7.03*10^7;       % Aluminum 7.03*10^10 [N/m^2] = 7.03*10^10Å~10^-7 [mN/mm^2]
A = pi*(10^2-9^2);
l = 1000;            % l = 1000 [mm]

EA   = E*A/l;
EI12 = 12*E*I/l^3;
EI6  =  6*E*I/l^2;
EI4  =  4*E*I/l;
EI2  =  2*E*I/l;

KB22 = [ EA  0     0
         0   EI12 -EI6
         0  -EI6   EI4 ];

f2 = [ 0
       5000
       0 ];

u2 = KB22\f2
