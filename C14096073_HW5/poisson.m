function[probability]=poisson(x,t)
probability=(exp(-t)*power(t,x))/factorial(x);
end