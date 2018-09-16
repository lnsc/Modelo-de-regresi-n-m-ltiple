function [theta, J_h]=gradiente(x,y,theta, alpha, iters)
  m=length(y);
  n=3;
  J_h=zeros(iters,1);
  for n =1 : n
    for iter = 1:iters
      theta=theta -alpha*(1/m)*x'*(x*theta-y);
      J_h(iter) = funcioncosto(x,y,theta);
    endfor
   endfor
endfunction