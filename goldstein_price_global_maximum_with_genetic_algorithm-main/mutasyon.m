function [ arapop ] = mutasyon( arapop,psize,d,us,as )
%MUTASYON Summary of this function goes here
%   Detailed explanation goes here
pmutation=0.005;
delta=0.05;
rs=unifrnd(0,1,[psize,d]);

for i =1:psize
    
    for j=1:d
       
        if (rs(i,j)<pmutation)
            rs2=unifrnd(-1,1);
            arapop(i,j)=arapop(i,j)*rs2*delta*(us-as);
        end
        
    end
end

end

