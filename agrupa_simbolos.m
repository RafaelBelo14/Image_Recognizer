function [h] = agrupa_simbolos(alfa)
    h = zeros(round(size(alfa)/2));
    for k = 1:2:length(alfa)
        h(k) = alfa(k);
    end
    h = unique(h);
    figure();
end
        
        
    