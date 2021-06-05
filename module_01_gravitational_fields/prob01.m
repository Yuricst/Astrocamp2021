%% Two-body propagation
% Yuricst
% house keep
clear; close all; clc;
% constants
day2sec = 86400.0;
mu = 398600.44;

% initial condition
sv0 = [-7321.031, -813.969, 0, 1.137, -10.237, 0.0]';
tspan = day2sec*[0.0, 40.0];
options = odeset('RelTol', 1e-12, 'AbsTol', 1e-12);
[ts, sols] = ode45(@(t,y) twobody(t,y,mu), tspan, sv0, options);
disp(sols(end, 1:3));
disp(sols(end, 4:6));

% plot
figure()
hold on;
plot(sols(:,1), sols(:,2), "-k");
scatter(0.0, 0.0, "ob");
xlabel("x, km"); ylabel("y, km");
grid on; axis equal;