function[entropia] = calcula_entropia_texto(nomeFonte, alfa)
    f = fileread(nomeFonte);
    Erase = fopen("simbolos_a_omitir.txt");
    erase = fscanf(Erase, "%c");
    if (nargin == 1)
        alfa = unique(f);
    end
    h = zeros(size(alfa));
    for k = 1 : length(alfa)
        q = strfind(erase, alfa(k));
        if (q>0)
            i = find(f == alfa(k));
            h(k) = length(i)/numel(f);
        end
        if (size(h,1)>size(h,2))
         h=h';
        end
        entropia =-h(h~=0)*log2((h(h~=0)))';
        
    end

end

            
            
            
            
        