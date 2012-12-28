def fib(n)
  return n if (1..2).include? n
  fib(n-1) + fib(n-2) if n > 2
end

def fib_array(n)
  result = []

  (1..n).each do |i|
    if i%2 == 0
      result << fib(i)
    end
  end

  result
end

def fib_sum(n)
  fib_array(n).reduce(:+)
end