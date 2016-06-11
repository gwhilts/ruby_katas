class Triangles
  require 'prime'

  def self.first_with_factor_count(c)
    tri, n, fcount = 1, 1, 1

    while fcount < c do
      n += 1  
      tri = tri + n  
      fcount = number_of_factors(tri)
    end

    tri
  end

  private
  def self.number_of_factors(number)
    primes, powers = number.prime_division.transpose
    powers.reduce(1) { |c, p| c * ( p + 1 ) }
  end
end
