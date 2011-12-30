function [B] = frequency_sort(B)
    [m,n] = size(B);
    N = m*(m-1);
    while N > 0;
    for i = 1:m-1
            if B(i,2) < B(i+1,2)
                hold = B(i,2);
                B(i,2)= B(i+1,2);
                B(i+1,2)= hold;
            end
     N = N - 1;
    end
    end
endfunction
