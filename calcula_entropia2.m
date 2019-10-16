function[entropia] = calcula_entropia2(nomeFonte)
    i = 1;
    entropia = 0;
    simbolos(i) = 0;
    fonte = fopen(nomeFonte);
    chars = fscanf(fonte, "%c");
    for j = 32:255
        dados = char(j); %converte o numero em ascii
        total = length(strfind(chars, dados)); 
        prob = total/length(chars);        
        if(total ~= 0)
            simbolos(i) = total;
            fprintf("Caracter:\t%c\tRepetições:\t%d\t", dados, total);
            fprintf("Com probabilidade:\t%f\n", prob);
            i= i+1;
            in = log2(i/prob);
            entropia = entropia+prob*in;
        end
    end
end

            
            
            
            
        