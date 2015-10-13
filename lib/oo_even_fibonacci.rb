# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(max)
    @max = max
  end

  def fibonacci
    num_array = [1, 2]
    while num_array[-1] + num_array[-2] < @max
        x = num_array[-1] + num_array[-2]
      num_array << x
    end
    num_array
  end

  def sum
    sequence = fibonacci
    even_num = sequence.select {|num| num.even? }
    even_num.inject {|sum, n| sum + n}
  end


end
