function [resultado] = euclides_mdc (num1, num2)
teste = false;
x = max(num1,num2);
y = min(num1,num2);
while(teste == false)
x = max(x,y);
y = min(x,y);
if (y == 0)
    resultado = x;
    teste = true;
end
z = mod(x,y);
x = y;
y = z;
end
