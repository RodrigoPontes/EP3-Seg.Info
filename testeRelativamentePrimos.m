
min = 1; % Número inicial mínimo do intervalo
max = 100; % Número inicial máximo do intervalo
rangeMax = 8; % Quantidade de intervalos
percTestes = 0.05; % Porcentagem de valores a serem testados dentro do intervalo
results = zeros(rangeMax,1); % Vetor de resultados de cada intervalo

for i=1:rangeMax
    disp(strcat('Testando intervalo:',num2str(min),'-',num2str(max)));
    
    % Calcula a qtd de testes no intervalo
    qtdTestes = int32((max-min) * percTestes);
    testes = zeros(qtdTestes, 1);
    
    for j=1:qtdTestes
        num1 = randi([min max]);
        num2 = randi([min max]);
        
        if(euclides_mdc(num1,num2) == 1)
            % Relativamente primos
            testes(j) = 1;
        end
    end
    
    % Calcula resultado do intervalo
    results(i) = double(sum(testes))/double(qtdTestes);
    
    % Define novo intervalo
    min = min * 5;
    max = max * 5;
end

results