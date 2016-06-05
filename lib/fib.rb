class Fib
  def self.fib(n)
    case n
    when 0
      0
    when 1..2
      1
    else
      fib( n - 1 ) + fib( n - 2 )
    end
  end

  def self.sum_of_evens_to(limit)
    self.calc_sum(1, 0, 0, limit)
  end

  private
  def self.calc_sum(n, fib_val, sum, limit)
    case
    when fib_val > limit
      sum
    when fib_val.even?
      self.calc_sum(n + 1, fib(n), sum + fib_val, limit)
    else 
      self.calc_sum(n + 1, fib(n), sum, limit)
    end
  end
end
