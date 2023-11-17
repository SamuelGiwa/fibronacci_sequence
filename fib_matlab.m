function [result, temp] = fib_matlab(n, temp)
    if nargin < 2
        temp = zeros(1, n + 1);
    end

    if temp(n + 1) ~= 0
        result = temp(n + 1);
    elseif n == 1 || n == 2
        result = 1;
    else
        [result1, temp] = fib_matlab(n - 1, temp);
        [result2, temp] = fib_matlab(n - 2, temp);
        result = result1 + result2;
    end

    temp(n + 1) = result;
end

