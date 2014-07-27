ajax = 1;
for i = 2:1000
    if miller_rabin_testprimo(i) == 1
        vetor_x(ajax) = i;
        ajax = ajax+1;
    end
end

vetor_x