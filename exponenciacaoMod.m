function [ resp ] = exponenciacaoMod( a, b, n )

% c = 0;
% f = 1;
% k = floor(log(b));
bi = bitget(b,floor(log2(b))+1:1);
% for i=k:-1:0
%     c = 2*c;
%     f = mod((f*f),n);
%     if bi 
%         c = c + 1;
%         f = mod( (f * a) , n);
%     end
% end
% ALGORITMO NAO FUNCIONAL AINDA. POR ENQUANTO, FAZENDO O MAIS SIMPLES
resp = mod((a^b),n);

end
