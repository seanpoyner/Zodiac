function [counter] = counting_frequency_analysis(A,c)
[m,n] = size(A);
counter = 0;
    for i = 1:m
        for j = 1:n
            if A(i,j) == c
                counter = counter + 1;
            end
        end
    end
endfunction
