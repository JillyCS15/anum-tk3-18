function res = newton(c, X, Xin, n)
  if n == 1
    res = c(n);
  else
    res = (c(n) .* newton_rec(X, Xin, n)) .+ newton(c, X, Xin, n-1);
  endif
endfunction