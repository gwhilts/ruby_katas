require 'prime'

class JMath
  class << self
    def digits(n)
      n.to_s.chars.map(&:to_i).sort
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

    def right_triangles(p)
      set = []
      (p-2).downto 2 do |c|
        b = p - c - 1
        b.downto 2 do |b|
          a = p - c - b
          set << [a, b, c].sort if a**2 + b**2 == c**2
        end  
      end
      set.uniq
    end

    def most_right_triangles(limit)
      h = {}
      (14..limit).each do |n|
        h[n] = (right_triangles n).count
      end
      ( h.select { |k, v| v == h.values.max } ).keys.first
    end
  end
end
