require 'prime'

class JMath
  class << self
    def digits(n)
      n.to_s.chars.map { |d| d.to_i }
    end

    def factorial(n)
      return 1 if n == 0
      n.downto(1).inject(:*)
    end

    def power_permutations(range)
      range.to_a.permutation(2).to_a + range.map { |n| [n, n] } 
    end

    def distinct_powers(range)
      ( ( power_permutations range ).map { |b, p| b**p } ).uniq
    end

    def factorial_digit_sum_match
      ( 3..1_854_721 ).select do |n|
        n == ( ( digits n ).map { |d| factorial d } ).inject(:+)
      end
    end

    def right_trunks(n)
      t = []
      d = JMath.digits n
      d.each_index { |i| t << ( d.slice(0, i + 1).join.to_i ) }
      t
    end

    def left_trunks(n)
      t = []
      d = JMath.digits n
      d.each_index { |i| t << ( d.slice(-i - 1, d.size).join.to_i ) }
      t
    end

    def trunks(n)
      ( right_trunks(n) + left_trunks(n) ).uniq.sort
    end

    def truncatable_primes
      primes = Prime.each
      tp_set = []
      while tp_set.size < 11
        p = primes.next
        tp_set << p unless trunks(p).any? { |t| !t.prime? } || p < 8
      end
      tp_set
    end
  end
end
