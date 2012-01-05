function [] = frequency_analysis(A)
// A is the cipher with each symbol converted to unicode symbols extra is the number of empty characters in the matrix (i.e. the cipher could not be converted to an n x m matrix). This can always be zero if you make A an array. //
    A = matrix2array(A);
    A = A';
    A = number2ascii(A);
    [m,n] = size(A);
    used = 0;
    B = [];
    for i = 1:m
        [a,b] = size(B);
        for j = 1:b
            if A(i,1) == B(1,j) then
                used = 1;
            end
        end
        if used == 0 then
            B($+1,:) = [A(i,1) 0]
            for k = 1:m
                if A(i,1) == A(k,1) then
                    B($,:) = [B($,1) (B($,2)+1)];
                end
            end
            used = 0;
        end
    end
[a,b] = size(B);
disp('Symbol       Frequency(%)      # of Times Used')
disp('    '+B(:,1)+'   '+B(:,2),'    ',B(:,2))
endfunction
