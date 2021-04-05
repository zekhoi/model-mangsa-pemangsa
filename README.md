# Model Mangsa-Pemangsa

Praktikum Pengantar Sistem Dinamik mengenai Mangsa-Pemangsa menggunakan software matlab.

Currently I don't know how to convert RMarkdown to Markdown

# Solusi Model Mangsa-Pemangsa
Untuk mensimulasikan sistem, pertama-tama buat fungsi yang menyatakan vektor kolom dari turunan variabel, variabel dan waktu yang diberikan. Kedua, variabel $x$ dan $y$ dapat direpresentasikan di dalam MATLAB sebagai dua nilai pertama dalam vektor 𝑦. Demikian pula, turunannya adalah dua nilai pertama dalam vektor $yp$. Fungsi tersebut harus dapat menerima nilai $t$ dan $y$ dan dapat memberikan nilai yang dihasilkan oleh persamaan dalam $yp$. 

$yp(1) = (1 - \alpha  *  y(2) )  *  y(1)$

$yp(2) = (-1 + \beta  *  y(1) )  *  y(2)$

$\alpha=0,01$ , dan
$\beta=0,02$

# Potret Fase Model Mangsa-Pemangsa
Plot isoclines dan lintasan bidang fase tertutup untuk memodelkan sistem persamaan Mangsa-Pemangsa Lotka-Volterra:

$\displaystyle \frac{dx_{1}}{dt} = \alpha x_{1} − \beta x_{1}x_{2}$

$\displaystyle \frac{dx_{2}}{dt} = \delta x_{1}x_{2} − \gamma x_{1}$

Untuk kasus: $\alpha = \beta = \delta = \gamma = 1$, akan ditentukan daerah plot untuk vektor plot.

