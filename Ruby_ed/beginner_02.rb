require "benchmark"
#
#def fib(n)
#  return n if n == 0
#  return n if n == 1
#  fib(n - 1) + fib(n - 2)
#end
#
#length = 40
#result = Benchmark.realtime do
#  length.times do |i|
#    p fib i
#  end
#end
#
#p "処理概要 #{result}s"

def fibonacci4(n)
  return if n < 0
  return n if n < 2
  a, b = 0, 1
  n.times { a, b = b, a + b }
  a
end

p fibonacci4 1000 ** 2
