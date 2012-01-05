function [B] = matrix2array(A)
[m,n] = size(A);
B = [];
o =1;
    for i = 1:m
        for j = 1:n
            B(1,o) = A(i,j);
            o = o + 1;
        end
    end
endfunction
