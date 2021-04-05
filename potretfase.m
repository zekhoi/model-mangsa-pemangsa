% Potret Fase Model Mangsa Pemangsa
% Membersihkan window
clear all; close all; clc
[x1, x2] = meshgrid(-0.2:0.2:3, -0.2:.2:3);

% Plot isoclines dan lintasan bidang fase tertutup untuk memodelkan sistem persamaan Mangsa-Pemangsa Lotka-Volterra:
x1dot = x1 - x2 .*x1;
x2dot = x1 .* x2 - x2;

% Membuat plot vektor dengan quiver
figure (1);
quiver(x1,x2,x1dot, x2dot, 'r')


% Mendefinisikan model Mangsa-Pemangsa Lotka-Volterra System
f = @(t,y) [y(1) - y(1)*y(2); y(1)*y(2) - y(2)];

hold on

% Menghitung fase potrait untuk kondisi awal yang berbeda dan plot lintasan fase dari loop tertutup
for y0=0:.7:2.8
	[ts, ys] = ode45(f,[0, 8], [y0/2, y0]);

	plot(ys(:,1), ys(:,2),'k','Linewidth',2.0)
	plot(ys(1,1),ys(1,2),'go','Linewidth',2.0) % starting point
	plot(ys(end,1),ys(end,2),'rs','Linewidth',2.0) % ending point
end

hold off

xlabel('x')
ylabel('y')
