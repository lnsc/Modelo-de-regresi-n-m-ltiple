function J=funcioncosto(x,y,theta)
  m=length(y);
  n=3;
  J=0;
  z=x*theta;
  J=(1/(2*m))*sum((sum((z),n)-y).^2,m);
endfunction
