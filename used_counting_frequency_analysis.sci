function [A] = used_counting_frequency_analysis(A,c)
[m,n] = size(A);
    for i = 1:m
        for j = 1:n
            if A(i,j) == c
                A(i,j)= 0;
            end
        end
    end
endfunction
