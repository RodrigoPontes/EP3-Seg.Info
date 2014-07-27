function [ resp ] = miller_rabin_testprimo( n )
% n eh o candidato a ser primo. Tem que ser > 3.

% RESP == 0 EH COMPOSTO
% RESP == 1 EH INCONCLUSIVO


%REGRAS FIXAS

if n==2
    resp = 1;
    return;
end;

if n==3
    resp = 1;
    return;
end;

if mod(n,2)==0
    resp = 0;
    return;
end;
%FIM DAS REGRAS FIXAS

%Decomposicao de n
n_temp = n-1;
counter_temp = 0;
sair = false;

while sair == false
    n_temp = n_temp/2;
    counter_temp = counter_temp + 1;
    if mod(n_temp,2)==1
        sair = true;
        k = counter_temp;
        q = n_temp;
    end
end


%'a' randomico entre 2 e (n-2)
a = randi([2 max(2,n-2)],1,1);
%a = 27;
x = exponenciacaoMod(a,q,n);
if x==1
    resp = 1;
    return;
end;

for j=0:(k-1)
    if exponenciacaoMod(a,(2^j)*q,n) == (n-1);
        resp = 1;
        return;
    end;
end

resp = 0;
return;

end
