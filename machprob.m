clear
clc
n = [0:99];
for i = 1:100
    if n(i)<=9
        f(i) = n(i).^2-7
    elseif n(i)>=10
        f(i) = (n(i)-10).^2-7
    end
end
stem(n,f)