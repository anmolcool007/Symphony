function r = corr1(h,x)

%   h =  [15 18 21 24 27];
%   x =  [25 25 27 31 32];
    hmax = max(abs(h));
    xmax = max(abs(x));
    
    x = x./xmax;
    h = h./hmax;
    
    n = length(h);
    
%     disp(h);
%     disp(x);
    
    xy1 = h.*x;

    xy1s = sum(xy1);

    x1 = sum(x);
    h1 = sum(h);

    rnr = n*xy1s - x1*h1;

    x21 = x.^2;
    x21s = sum(x21);

    h21 = h.^2;
    h21s = sum(h21);

    rdr = sqrt((n*x21s - x1^2)*(n*h21s - h1^2));

    r = rnr/rdr;
end
