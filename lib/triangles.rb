class Triangles
  require 'prime'

  def self.first_with_factor_count(c)
    factors = []
    t = n = factors = 1
    while factors < c do
      n += 1  
      t = t + n  
      factors = factors_of(t).count
    end  
    t
  end


  def self.factors_of(n)
    primes, powers = n.prime_division.transpose
    exponents = powers.map{|i| (0..i).to_a}
    factors = exponents.shift.product(*exponents).map do |exp|
      primes.zip(exp).map{|prime, power| prime ** power}.inject(:*)
    end
  end

end
