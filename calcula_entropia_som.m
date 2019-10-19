function [entropia] = calcula_entropia_som(f,alfa)
f = audioread(f);
if (nargin == 1)
    alfa = unique(f);
end
h = zeros(size(alfa));
for k = 1 : length(alfa)
    i = find(f == alfa(k));
    h(k) = length(i)/numel(f);
end
    if (size(h,1)>size(h,2))
         h=h';
    end
    entropia =-h(h~=0)*log2((h(h~=0)))';
end