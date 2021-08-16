boy = input('boyunuzu giriniz = ');

member=zeros(501,3);

for i=1:3
    
    for j=1:501
        if (i==1)
            if (j<=100)
                member(j,1)=1;
            elseif (j>100 && j<=200)
                member(j,1)= 1-(j-100)./100;
            else
                member(j,1)=0;
            end
            
        elseif (i==2)
            if (j>=200 && j<270)
                member(j,2)=1;
            elseif (j>=270 && j<=350)
                member(j,2)= 1-(j-270)./80;
            elseif (j>150 && j<200)
                member(j,2) = (j-150)./50;
            else
                member(j,2)=0;
            end
            
       elseif (i==3)
            if (j>=350)
                member(j,3)=1;
            elseif (j<350 && j>=300)
                member(j,3)= (j-300)./50;
            else
                member(j,3)=0;
            end
            
        end
    end
end

% member

timeT = 150:.1:200;
% initialX = [1 0 0];
% x = member;
a=10.*(boy-150);
short = member(:,1);
medium = member(:,2);
long = member(:,3);

plot(timeT,short,'r',timeT,medium,'g',timeT,long,'b');
title('Fuzzy Logic Membership Function');
xlabel('height -->');
ylabel('value -->');
grid on

disp('short=');
disp(short(a,1));
disp('medium=');
disp(medium(a,1));
disp('long=');
disp(long(a,1));


