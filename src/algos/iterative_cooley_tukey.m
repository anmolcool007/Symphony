function a=iterative_cooley_tukey(x)
    N = length(x);
    bnum = fix(N/2);
    stride = 0;

    x = bitrevorder(x);

    z = complex(x);
    for i = 1:N
       stride = fix(N/bnum);
       for j = 0:bnum-1
           start_index = j*stride + 1;
           y = butterfly(z(start_index:start_index + stride - 1));
           for k = 1:length(y)
               z(start_index+k-1) = y(k);
           end
       end
       bnum = fix(bnum/2);
    end

    a= z;
end