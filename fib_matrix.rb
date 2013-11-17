require 'benchmark'
require 'matrix'

FIB_MATRIX = Matrix[[1,1],[1,0]]

def array(num)
  if num < 2
    num
  else
    numbers = [0, 1]
    (num - 1).times do
      numbers.push(numbers[-1] + numbers[-2])
    end

    numbers[-1]
  end
end

def iteration(num)
  curr_num = 0
  next_num = 1
  num.times do |i|
    curr_num, next_num = next_num, curr_num + next_num
  end
  curr_num
end

def matrix(num)
  (FIB_MATRIX ** ( num - 1))[0,0]
end

n = 100000

Benchmark.bm do |b|
  b.report('array:') {array(n)}
  b.report('iteration:') {iteration(n)}
  b.report('matrix:') {matrix(n)}
end
