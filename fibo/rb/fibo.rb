def fibo(n)
  if n == 0 then
    return 0
  elsif n == 1 then
    return 1
  else
    return fibo(n - 2) + fibo(n - 1)
  end
end

puts fibo(40)
