function [ resp ] = exponenciacaoMod( a, b, n )

c = 0;
f = 1;
k = floor(log2(double(b)));
for i = k:-1:0
    c = 2*c;
    f = mod(f*f,n);
    if bitget(b,i+1)
        c = c+1;
        f = mod(f*a,n);
    end
end

resp = f;

end
