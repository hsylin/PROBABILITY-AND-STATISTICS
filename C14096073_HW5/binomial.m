function[probability]=binomial(x,n,p)
probability=nchoosek(n,x)*power(p,x)*power(1-p,n-x);
end
