function fibo(n)
    if n == 0 then
        return 0
    elseif n == 1 then
        return 1
    else
        return fibo(n - 2) + fibo(n - 1)
    end
end

print(fibo(40))
