function  a=butterfly(x)
    N = length(x);
    half = fix(N/2);
    n = 0:N-1;
    half = fix(N/2);
    factor = exp(-2i*pi*n/N);

    y = zeros(length(x),1);

    for j = 1:half
        y(j) = x(j) + x(half+j)*factor(j);
        y(half+j) = x(j) - x(half+j)*factor(j);
    end

    a= y;
end