function [A] = array2matrix(B,m,n)
o = 1;
    for i = 1:m
        for j = 1:n
            A(i,j) = B(1,o);
            o = o + 1;
        end
    end
endfunction
