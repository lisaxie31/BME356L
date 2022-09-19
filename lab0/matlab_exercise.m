%% Part 1
i_s=50;
h_s=50;

% Q1
kp = 10;
kd = 0.8;
K = 0.002;
wn = 30;
z = 0.1;

s = tf('s');
c_s = kp+kd*s;
p_s = (K*(wn^2))/(s^2+2*z*wn*s + wn^2);

% pole(p_s)
% zero(p_s)
% pzmap(p_s);

Tcl = i_s*c_s*p_s/(1 + h_s*c_s*p_s);
Tcl = minreal(Tcl);
% pole(Tcl)
% zero(Tcl)
% pzmap(Tcl);

bandwidth(Tcl);

% Tloop = c_s*p_s*h_s;
% margin(Tloop);

bode(Tcl);
hold on

kp=1;
kd=0.03;
K=0.004;
wn=10;
z=0.9;

s = tf('s');
c_s = kp+kd*s;
p_s = (K*(wn^2))/(s^2+2*z*wn*s + wn^2);

Tcl_2 = i_s*c_s*p_s/(1 + h_s*c_s*p_s);
Tcl_2 = minreal(Tcl_2);

pole(Tcl_2)
zero(Tcl_2)
% pzmap(Tcl_2);

bandwidth(Tcl_2)

% Tloop = c_s*p_s*h_s;
% margin(Tloop);

bode(Tcl_2)

%% Part 2

I = 100;
H = 100;

% Q1
K = 0.01;
a = 3;
b = 0.5;
c = -8;

% Q2
K = 10;
a = 20;
b = 5;
c = -100;

s = tf('s');
% C = kp;
P = K/(s^3+a*s^2+b*s+c);

hold off

sys = P*H;
rlocus(sys);



