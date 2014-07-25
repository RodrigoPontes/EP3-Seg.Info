function [ cript ] = RSA_cript( clear, e,n )

%cript = mod(clear^e,n);
cript = exponenciacaoMod(clear,e,n);

end
