function v = velcaida(m,t)
  c = 0.21;
  g = 9.8;
  t1 = 0:0.05:t;
  v = (m*g/c)*(1- exp(-(c/m)*t1));
  figure (1);
  plot (t1,v,'b-');grid on;
end
%tarea: hacer esto mismo pero con m constante y varios c