function [A] = cipherReplaceSpecial(A)
// Replaces 'a' with 'b' in the cipher A
[m,n] = size(A);
if m < 1 
    disp('Cipher is empty')
else
    for i = 1:m
        for j = 1:n
            A(i,j) = A(i,j) + 64;
        end
    end
end
endfunction
