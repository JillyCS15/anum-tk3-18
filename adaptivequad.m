% source: https://www.math.usm.edu/lambers/mat460/fall09/lecture30.pdf

f=@(x) 97.02 + 2.219*(x-1960)+0.03045*(x-1960)*(x-1970)-0.000413*(x-1960)*(x-1970)*(x-1980)-0.000025583*(x-1960)*(x-1970)*(x-1980)*(x-1990)+0.00000202167*(x-1960)*(x-1970)*(x-1980)*(x-1990)*(x-2000)	- 0.000000076625*(x-1960)*(x-1970)*(x-1980)*(x-1990)*(x-2000)*(x-2010)- 0.000000001849007937*(x-1960)*(x-1970)*(x-1980)*(x-1990)*(x-2000)*(x-2010)*(x-2020);

stack = {};
%pop x = stack{end}; stack(end) = []
%push stack{end+1} = x;
a = 1960;
b = 2020;
stack{end+1} = [a,b];
i = 0;
tol = 10e-5;

while (isempty(stack) == 0)
  pop = stack{end}; a = pop(1); b = pop(2); stack(end) = [];
  i1 = ((b-a)/2)*(f(a)+f(b));
  m = (a+b)/2;
  i2 = ((b-a)/4)*(f(a) + 2*f(m) + f(b));
  if abs(i1-i2)<(3*(b-a)*tol)
    i = i + i2;
  else
    stack{end+1} = [a,m];
    stack{end+1} = [m,b];
  endif
endwhile

i
