function [ e, d, n ] = RSA_keys( p, q )

if or(or( (miller_vezes(p,100)==0),(miller_vezes(q,100)==0)),p==q )
%   'p E/OU q NAO EH PRIMO ou p==q'
    pub_key = -1;
    pri_key = -1;
    return;
end;

n = uint64(p*q);

toc_n = (p-1)*(q-1);
for i=2:toc_n-1
  if ( euclides_mdc(toc_n,i)==1 )
    e = i;
    break;

  end
end

%d = mod(e^(-1),toc_n);

[d ~] = euclidesEstendido(e,toc_n);


end
