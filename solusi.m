% Solusi Model Mangsa Pemangsa
% Membersihkan window
clear all; close all; clc

% Mengimpor file / module bawaan 'lotka' dari Matlab
type lotka

% Menggunakan ode45/ode23 untuk menyelesaikan persamaan diferensial yang ditentukan dalam 'lotka'
t0 = 0;
tfinal = 15;
y0 = [20; 20];
[t,y] = ode45(@lotka,[t0 tfinal],y0);


% Membuat plot populasi terhadap waktu
figure (1);
plot(t,y)
title('Populasi Mangsa-Pemangsa Terhadap Waktu')
xlabel('Waktu')
ylabel('Populasi')
legend('Mangsa','Pemangsa','Location','North')


% Membuat plot populasi satu sama lain yang membuat hubungan siklik antar populasi menjadi jelas
figure (2);
plot(y(:,1),y(:,2))
title('Phase Plane Plot')
xlabel('Populasi Mangsa')
ylabel('Populasi Pemangsa')


