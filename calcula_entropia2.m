function[entropia] = calcula_entropia2(alfa)
    p = alfa/(sum(alfa));
    p(p==0) = 1;
    entropia = -sum(p .* log2(p));
end

            
            
            
            
        