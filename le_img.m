function [alfa] = le_img(f,alfa)
fonte = f;
f = fileread(f);
if (nargin == 1)
    alfa = unique(f);
end
h = zeros(size(alfa));
for k = 1 : length(alfa)
    i = find(f == alfa(k));
    h(k) = length(i);
end
bar(double(alfa),h);
title("Histograma da imagem ");
ylabel("Ocorrencias");
xlabel("Alfabeto em código ASCII");
entropia = calcula_entropia_img(fonte, alfa);
fprintf("Limite mínimo teórico para o número médio de bits por símbolo para a fonte:\t%f\n",entropia);         
HLen = hufflen(h);
huff = Huffman(h, HLen);
fprintf("Número médio de bits por símbolo para a fonte:\t%f\n\n",huff);

end 
            