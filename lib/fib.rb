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

  def self.first_with_digit_count(digits)
    limit = 10**(digits-1)
    a, b, n = 0, 1, 1
    
    while b < limit
      n += 1
      a, b = fibs a, b
    end

    n
  end

  private
  
  def self.fibs(a, b)
    [b, (a+b)]
  end

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
