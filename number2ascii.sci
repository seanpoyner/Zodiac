function [B] = number2ascii(A)
B =[];
[m,n] = size(A);
if m < 1 
    disp('Cipher is empty')
else
    for i = 1:m
        for j = 1:n
            B(i,j) = ascii(A(i,j));
        end
    end
end
endfunction
