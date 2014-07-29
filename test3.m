vetorGrande = zeros(1,10000);
for i = 1:10000
  vetorGrande(i) = miller_vezes(i,100);
end
j = 1;
for i = 1:100
    vetor100(i) = sum(vetorGrande(j:j+99));
    j = j+100;
end
bar(vetor100)