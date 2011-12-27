function [] = frequency_analysis(A)
// A is the cipher with each symbol converted to unicode symbols extra is the number of empty characters in the matrix (i.e. the cipher could not be converted to an n x m matrix). This can always be zero if you make A an array. //
[m,n] = size(A);
if m < 1 
    display('Cipher is empty. No frequency analysis can be conducted')
else
    A = matrix2array(A);
    B = [];
    c = 1;
        for j = 1:(m*n)
            if A(1,j) ~= 0
                B(c,1) = A(1,j);
                B(c,2) = counting_frequency_analysis(A,A(1,j));
                A = used_counting_frequency_analysis(A,A(1,j));
                c = c + 1;
            end
        end
B = frequency_sort(B);
disp('Symbol       Frequency(%)      # of Times Used')
for i = 1:(c-1)
    g = num2str((B(i,2)/(m*n))*100);

    while length(g) < 7
        g(length(g)+1) = '0';
    end
    str = ['   ',char(native2unicode(B(i,1))),'          ',g,'%              ',num2str(B(i,2))];
    disp(str)
end
end
endfunction
