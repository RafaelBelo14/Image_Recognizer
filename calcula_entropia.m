function[entropia] = calcula_entropia(nomeFonte)
    i = 1;
    entropia = 0;
    simbolos(i) = 0;
    fonte = fopen(nomeFonte);
    Erase = fopen("simbolos_a_omitir.txt");
    chars = fscanf(fonte, "%c");
    erase = fscanf(Erase, "%c");
    for j = 32:255
        dados = char(j); %converte o numero em ascii
        total = length(strfind(chars, dados)); 
        prob = total/length(chars);        
        if(total ~= 0)
            simbolos(i) = total;
            k = strfind(erase, dados);
            if (k > 0)
            fprintf("Caracter:\t%c\tRepetições:\t%d\t", dados, total);
            fprintf("Com probabilidade:\t%f\n", prob);
            i= i+1;
            in = log2(i/prob);
            entropia = entropia+prob*in;
            end
        end
    end
end

            
            
            
            
        