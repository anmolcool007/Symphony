function [P1,f] = mainfile(x,Sam)

%[x,Sam]=audioread('audio4.mp3');
x=x(:,1);
j=-1;
io=length(x);
while(io>0)
    io=fix(io/2);
    j=j+1;    
end
io=length(x);
if(mod(io,2^j)~=0)
    k=2^(j+1)-length(x);
    k=zeros(k,1);
    x=[x;k];
end
z = iterative_cooley_tukey(x);
% w = fft(x);
Fs = Sam;                  % Sampling frequency                    
T = 1/Fs;                  % Sampling period       
L = length(x);             % Length of signal
t = (0:L-1)*T;
P2 = abs(z/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;

% for k=1:length(k)
%     if (P1(k)<8e-4)
%         P1(k) = 0;
%     end
% end


% x1 = zeros(1:kv);
% l=1;
% x1(1) = P1(1);
% for di=1:length(P1)
%     if(P1(di)>x1(l))
%         if(l==kv)
%             for di2=2:kv
%                 di[
%                 
%         x1(l+1) = P1;
%         l=l+1;
%     elseif (P1(di)<x1(l))
%         for di2=1:l




% dp=[];
% i=1;
% 
% for k=1:length(k)
%     if (f(k)>1683)
%         disp(k);
%         break;
%     end
% end
% 
% %P1




% plot(f,P1) 
% title('Single-Sided Frequency Spectrum of US Dial Tone')
% xlabel('f (Hz)')
% ylabel('|X(f)|')
% hold on;

