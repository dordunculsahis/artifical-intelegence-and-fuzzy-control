function [ arapop ] = dogal_secilim( population, Z, psize )
%DOGAL_SECÝLÝM Summary of this function goes here
%   Detailed explanation goes here
toplam=sum(Z);
probs=Z/toplam;
cprobs=probs;

for i=2:psize
    cprobs(i)=cprobs(i-1)+probs(i);
end

rs=unifrnd(0,1,[psize,1]);
arapop=population;

for i=1:psize
    idx=find(rs(i)<cprobs,1);
    arapop(i,:)=population(idx,:);
    
end

end

