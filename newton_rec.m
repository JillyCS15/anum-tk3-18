function res = newton_rec(X, Xin, n)
  if n==1
    res = 1;
  else
    res = (Xin - X(n-1)) .* newton_rec(X, Xin, n-1);
  endif
endfunction