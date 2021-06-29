function res = horner_method(start, to)
  f = @(t) (t-2010)/30;
  count = 1;
  
  for i=start:to
    basis = f(i);
    p1 = -230.172 + basis*-55.860;
    p2 = -302.653 + basis*p1;
    p3 = -109.389 + basis*p2;
    p4 = 39.718 + basis*p3;
    p5 = 110.906 + basis*p4;
    p6 = 237.630 + basis*p5;
    res(count) = p6;
    count++;
  endfor
endfunction