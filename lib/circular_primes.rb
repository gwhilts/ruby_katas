class CircularPrimes
  require 'prime'

  class << self
    def primes_to(limit)
      set = []
      primes = Prime.each
      p = primes.next
      while p <= limit
        set << p
        p = primes.next
      end
      set
    end

    def circular_primes_to(limit)
      primes = primes_to(limit)
      primes.select do |p|
        is_circular? p
      end
    end

    def is_circular?(n)
      digits = n.to_s.chars
      (digits.size - 1).times do
        digits.rotate!
        return false if !digits.join.to_i.prime?
      end
      true
    end

    def euler
      (circular_primes_to 1_000_000).count
    end
  end
end
