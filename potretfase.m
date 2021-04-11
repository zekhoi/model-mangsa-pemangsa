% Solusi Model Mangsa Pemangsa

% Membersihkan window
clear all; close all; clc

%inisialisasi nilai pada variabel
n = 50;
m = 40;
a1 = 0.2;
a2 = 0.3;
b11 = 0.004;
b12 = 0.004;
b21 = 0.006;
b22 = 0.006;

t0 = 0;
tfinal = 50;


% Menggunakan ode45/ode23 untuk menyelesaikan persamaan diferensial 

waktu = [t0 tfinal];
y0 = [n; m];

[t,y] = ode45(@(t,y) [y(1)*(a1-b11*y(1)-b12*y(2)); y(2)*(a2-b21*y(1)-b22*y(2));], waktu, y0);


% Membuat plot populasi terhadap waktu
figure (1);
plot(t,y)
title('Populasi N/M Terhadap Waktu')
xlabel('Waktu')
ylabel('Populasi')
legend('N','M','Location','North')


% Membuat plot populasi satu sama lain yang membuat hubungan siklik antar populasi menjadi jelas
figure (2);
plot(y(:,1),y(:,2))
title('Phase Plane Plot')
xlabel('Populasi N')
ylabel('Populasi M')


