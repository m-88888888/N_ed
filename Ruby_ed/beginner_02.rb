require 'benchmark'

def fib(n)
  if (n == 0)
    return 0 
  elsif(n == 1)
    return 1 
  end
  fib(n-1) + fib(n-2)
end

length = 40

result = Benchmark.realtime do
  length.times do |i|
    p fib(i)
end
end

p "処理概要 #{result}s"
