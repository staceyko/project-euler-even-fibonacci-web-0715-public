# Implement your procedural solution here!

def fibonacci(max)
  num_array = [1, 2]
  while num_array[-1] + num_array[-2] < max
      x = num_array[-1] + num_array[-2]
    num_array << x
  end
  num_array
end

def even_fibonacci_sum(max)
  sequence = fibonacci(max)
  even_num = sequence.select {|num| num.even? }
  even_num.inject {|sum, n| sum + n}
end
  #
  # range = (1...max).to_a
  # i = 1
  # sequence = []
  # range.each_with_index do |num, i|
  #   fib_num = range[i] + num
  #   i += 1
  #   sequence << fib_num
  # end
  #   even_num = sequence.select {|num| num.even? }
  #   even_num.inject {|sum, n| sum + n}

#
#     end
#
#   inject {|sum, n| sum + n}
#   binding.pry
#   even_sum = sequence.map {|num| num.even? }
#   even_sum.inject {|sum, n| sum + n}
# end
