function finalv = normalizeVal(h)

finalv = [];
k = 1;
    while 1
        sum_b=[h(k)];
        for l=k+1:length(h)
            if(l==length(h))
                sum_b = [sum_b h(l)];
                finalv = [finalv sum(sum_b)/length(sum_b)];
                sum_b;
                sum_b = [];
                k = l;
            elseif(h(l)<=h(k)+5)
                sum_b = [sum_b h(l)];
            else
                finalv = [finalv sum(sum_b)/length(sum_b)];
                sum_b;
                sum_b = [];
                k = l;
                break;
            end
%             if(length(finalv)==100)
%                 break;
%             end
            
        end
%        if(length(finalv)==100)
%               break;
%             end
       if(k==length(h))
           break;
       end
    end
end
