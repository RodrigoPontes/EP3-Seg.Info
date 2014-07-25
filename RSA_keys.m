function [ pub_key, pri_key ] = RSA_keys( p, q )

%if or((miller_rabin_testprimo(p,100)),(miller_rabin_testprimo(q,100)))==0
%    'p E/OU q NAO EH PRIMO'
%    return;
%end;

n = uint64(p*q);

toc_n = (p-1)*(q-1);
ja_eh = false;
for i=1:toc_n
  if ( (euclides_mdc(toc_n,i)==1) && (ja_eh == false) )
    e = i;
    ja_eh=true;
  end
end

% d = mod( (e^(-1)) ,toc_n );
d = exponenciacaoMod(e,-1,toc_n);%Usar o Euclides para calcular o inv do e
pub_key = [e, n];
pri_key = [d, n];

end
