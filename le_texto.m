function [alfa] = le_texto(f,alfa)
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
title("Histograma do ficheiro de texto");
ylabel("Ocorrencias");
xlabel("Alfabeto em c�digo ASCII");
entropia = calcula_entropia_texto("lyrics.txt", alfa);
fprintf("Limite m�nimo te�rico para o n�mero m�dio de bits por s�mbolo para a fonte 'lyrics.txt':\t%f\n\n",entropia); 
HLen = hufflen(h);
huff = Huffman(h, HLen);
fprintf("N�mero m�dio de bits por s�mbolo para a fonte:\t%f\n\n",huff);
end


