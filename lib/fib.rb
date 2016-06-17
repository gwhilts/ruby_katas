class Fib
  def self.fib(nth)
    f1, f2, n = 0, 1, 1
    while n < nth
      f1, f2 = fibs f1, f2
      n += 1
    end
    f1
  end

  def self.sum_of_evens_to(n = 1, fib_val = 0, sum = 0, limit)
    case
    when fib_val > limit
      sum
    when fib_val.even?
      self.sum_of_evens_to(n + 1, fib(n), sum + fib_val, limit)
    else 
      self.sum_of_evens_to(n + 1, fib(n), sum, limit)
    end
  end

  def self.index_where_digit_count(count)
    limit = 10**(count - 1)
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

end
