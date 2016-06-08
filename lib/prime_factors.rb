require 'prime'

module PrimeFactors
  refine Fixnum do
    def largest_prime_factor
      factors = Prime.prime_division self
      factors.last[0]
    end
  end
end
