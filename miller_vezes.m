function [ resp ] = miller_vezes( n, k )
% k eh a acuracia do teste (qtas vezes vai rodar)
for i=1:k
    if (miller_rabin_testprimo(n)==0)
           resp = 0;
           return;
    end
end

resp = 1;
end
