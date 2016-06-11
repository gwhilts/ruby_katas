require 'prime'

module PrimeFactors
  refine Fixnum do
    def largest_prime_factor
      self.prime_division.last[0]
    end
  end
end
