I = 150; 
H = 150;

s = tf('s');
C = 2 + 0.5/s + 0.1*s;
P = 0.8/(s^2 + 2*s + 3);

Tcl = (I*C*P) / (1+H*C*P);
Tcl = minreal(Tcl);
bandwidth(Tcl);