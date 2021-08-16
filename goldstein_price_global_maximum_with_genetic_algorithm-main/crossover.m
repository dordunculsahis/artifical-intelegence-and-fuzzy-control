function [ arapop ] = crossover( arapop,psize,d )
%CROSSOVER Summary of this function goes here
%   Detailed explanation goes here
pairs=randperm(psize);
pcross=unifrnd(0.6,0.95);
for i=1:psize/2
    
    anneidx=pairs(2*i-1);
    babaidx=pairs(2*i);
    anne=arapop(anneidx,:);
    baba=arapop(babaidx,:);
    rs=unifrnd(0,1);
    if (rs<pcross)
        
        cpoint=unidrnd(d-1);
        dumy=anne(cpoint+1:end);
        anne(cpoint+1:end)=baba(cpoint+1:end);
        baba(cpoint+1:end)=dumy;
        arapop(anneidx,:)=anne;
        arapop(babaidx,:)=baba;
        
        
    end
    
end

end

