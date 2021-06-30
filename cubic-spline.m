function [C] = cubicSpline(x, y)
    %Mencari nilai Ki
    sz = size(x)
    baris = sz(1,1)
    k = zeros(baris,1)
    c = zeros(baris-2,1)
    for i=2:baris-1
      c(i-1) = 6*(((y(i-1)-y(i)) / (x(i-1)-x(i)))-((y(i)-y(i+1)) / (x(i)-x(i+1))))
    endfor
    %-10k0 -40k1 -10k2 = -3.654
    %-10k1 -40k2 -10k3 = -2.166
    %-10k2 -40k3 -10k4 = 3.006
    %-10k3 -40k4 -10k5 = -2.694
    %-10k4 -40k5 = -0.72
    %k0=k6=0
    M = [-40, -10, 0, 0, 0; -10, -40, -10, 0, 0; 0, -10, -40, -10, 0; 0, 0, -10, -40, -10; 0, 0, 0, -10, -40]
    r = M\c
    for i=2:6
      k(i) = r(i-1)
    endfor
    
    %Mencari nilai a dan b
    ai = zeros(baris-1,1);
    bi = zeros(baris-1,1);
    for i=1:6
      p1 = zeros(2,2);
      p1(1,1)=x(i);
      p1(1,2)=1;
      p1(2,1)=x(i+1);
      p1(2,2)=1;

      p2 = zeros(2,1);
      p2(1,1)=y(i)-k(i)*100/6;
      p2(2,1)=y(i+1)-k(i+1)*100/6;

      hasil = p1\p2;
      ai(i) = hasil(1);
      bi(i) = hasil(2) ;
    endfor
    
    %Buat persamaan S
    for i=1:6
      kiri = k(i)/(-60);
      kanan = k(i+1)/60;
      sprintf("i = %d",i)
      sprintf("kiri = %d kanan = %d a = %d b = %d",kiri,kanan,ai(i),bi(i))
    endfor
endfunction