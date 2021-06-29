function computeC (basis, y, poin)
  [L, U] = funLU(basis);
  
  x = lower(L,y);
  c = upper(U,x);
  
  printf("Nilai c untuk basis %s adalah:\n", poin)
  c
  printf("Bilangan kondisi norm-1:\n")
  cond(basis, 1)
  printf("Bilangan kondisi norm-2:\n")
  cond(basis, 2)
  printf("Bilangan kondisi norm-inf:\n")
  cond(basis, inf)
  
endfunction