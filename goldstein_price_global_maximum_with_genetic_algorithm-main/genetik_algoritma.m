function [ eniyicozum,eniyideger] = genetik_algoritma ()
%GA Summary of this function goes here
%   Detailed explanation goes here
as=-100;    us=100; d=2;    psize=100;
population = unifrnd(as, us, [psize,d]);

iteration=1;
eniyideger=1000000000;

while (iteration<50)
    
    Z= zeros(psize,1);

for i=1:psize
    x(i)=population(i,1);
    y(i)=population(i,end);
        Z(i)=(1 + ((x(i) + y(i) + 1).^2) * (19 - (14 .* x(i)) + (3 .* (x(i) .^2)) - 14.*y(i) + (6 .* x(i).*y(i)) + (3 .* (y(i).^2)))) .* ...
        (30 + ((2 .* x(i) - 3 .* y(i)).^2) .* (18 - 32 .* x(i) + 12 .* (x(i) .^2) + 48 .* y(i) - (36 .* x(i).*y(i)) + (27 .* (y(i).^2))) );
end
    if (eniyideger<max(Z))
        eniyideger=max(Z);
        idx=find(Z==eniyideger);
        eniyicozum=population(idx,:);
    end
x=x';
y=y';
[ arapop ] = dogal_secilim( population, Z, psize );
[ arapop ] = crossover( arapop,psize,d );
population= mutasyon( arapop,psize,d,us,as );
iteration=iteration+1;
end

end

