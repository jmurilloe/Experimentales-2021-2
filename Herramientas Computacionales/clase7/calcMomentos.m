function [mu, sigma, kuar] = calcMomentos(data)
  mu        = mean(data);
  sigma     = std(data);
  #asimetria = skewness(data);
  kuar   = kurtosis(data);
end
