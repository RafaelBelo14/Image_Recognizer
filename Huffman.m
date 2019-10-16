function [huffman] = Huffman(ocorrencias, HLen)
    prob = ocorrencias/(sum(ocorrencias));
    huffman = sum(prob.*HLen);
end