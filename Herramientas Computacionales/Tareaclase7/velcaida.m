function v = velcaida(t,c,numfig)
  m = 1;
  g = 9.8;
  t1 = 0:0.05:t;
  v = (m*g/c)*(1- exp(-(c/m)*t1));
  figure (numfig);
  plot (t1,v,'b-');grid on;
end