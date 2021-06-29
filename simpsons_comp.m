function integral = simpons_comp(f, a, b, n)
  h = (b-a)/n;
  result = f(a) + f(b);
  c = a;
  for i = 2:(n-1)
    c += h;
    if (mod(i,2) == 1)
      result = result + 4*f(c); 
    else
      result = result + 2*f(c);
    endif
  end
  integral = (h/3) * result;
  
endfunction