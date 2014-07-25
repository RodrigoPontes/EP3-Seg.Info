function [ clear ] = RSA_decript( cript, d,n )

% clear = mod(cript^d,n);
clear = exponenciacaoMod(cript,d,n);
end
