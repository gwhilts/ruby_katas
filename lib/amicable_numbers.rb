class AmicableNumbers
  require 'prime'

# Project Euler, Probem 21:
#
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which 
# divide evenly into n).
#
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each 
# of a and b are called amicable numbers.
# 
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
# therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
# 
# Evaluate the sum of all the amicable numbers under 10000.

  class << self
    def sum_to(limit)
      ( pairs_to(limit).flatten ).inject(:+) 
    end

    def pairs_to(limit)
      set = (2..limit).map do |n| 
        amicables(n).sort
      end
      set.delete([])
      set.uniq
    end

    def amicables(a)
      b = divisor_sum(a)
      a != b && divisor_sum(b) == a  ? [a, b] : []
    end

    private

    def divisor_sum(n)
      factors = factors_of n
      factors.delete n
      factors.inject(:+) 
    end

    def factors_of(n) 
      if n == 1
        [1]
      else
        primes, powers = n.prime_division.transpose
        exponents = powers.map{|i| (0..i).to_a}
        factors = exponents.shift.product(*exponents).map do |exp|
          primes.zip(exp).map{|prime, power| prime ** power}.inject(:*)
        end
      end
    end
  end
end
