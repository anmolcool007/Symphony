
[x1,Sam1]=audioread('US_Dial_Tone.ogg');
x1 = x1(1:40000,1);
[P1,f1] = mainfile(x1,Sam1);

subplot(2,1,1)
plot(f1,P1) 
title('Single-Sided Frequency Spectrum of standard Fur Elise')
xlabel('f (Hz)')
ylabel('|X(f)|')

[x2,Sam2]=audioread('US Dial Tone.mp3');
x2 = x2(1:220000,1);
[P2,f2] = mainfile(x2,Sam2);

subplot(2,1,2)
plot(f2,P2) 
title('Single-Sided Frequency Spectrum of Fur Elise by User')
xlabel('f (Hz)')
ylabel('|X(f)|')


kv = 10000;  % number of highest frequencies
finalval=[];   % to store "kv" highest frequencies signal

for itr=1:length(P1)
    [maxval,ind] = max(P1);
    finalval = [finalval f1(ind)];
    P1(ind) = 0;
    if(length(finalval)==kv)
        break;
    end
end

finalval2=[];    % to store "kv" highest frequencies of second signal
for itr2=1:length(P2)
    [maxval2,ind2] = max(P2);
    finalval2 = [finalval2 f2(ind2)];
    P2(ind2) = 0;
    if(length(finalval2)==kv)
        break;
    end
end

% finalval
% finalval2
% 
    sort(finalval);
    sort(finalval2);
%     
%    
    finalv1 = normalizeVal(finalval);
    finalv2 = normalizeVal(finalval2);

    
   len1 = length(finalv1);
   len2 = length(finalv2);
   if(len1>len2)
       finalv1 = finalv1(1:len2);
   elseif(len1<len2)
       finalv2 = finalv2(1:len1);
   end
   
   finalv1
   finalv2
r = abs(corr1(finalv1, finalv2));

disp(r);
 
 
