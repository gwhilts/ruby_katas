require 'prime'

module PrimeFactors
  refine Fixnum do
    def largest_prime_factor
      self.prime_division.last[0]
    end

    def four_fours?
      self.prime_division       == 4 &&
      (self + 1).prime_division == 4 &&
      (self + 2).prime_division == 4 &&
      (self + 3).prime_division == 4
    end
  end
end
