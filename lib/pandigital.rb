class Pandigital
  def initialize(n = 9)
    @numbers = (0..n).to_a.permutation.to_a.map { |a| a.join.to_i }
  end

  def substring_primes
    @numbers.select do |p|
      substring_div?(p, 1, 2)  &&
      substring_div?(p, 2, 3)  &&
      substring_div?(p, 3, 5)  &&
      substring_div?(p, 4, 7)  &&
      substring_div?(p, 5, 11) &&
      substring_div?(p, 6, 13) &&
      substring_div?(p, 7, 17)
    end
  end

  private

  def substring_div?(p, i, d)
    n = p.to_s.slice(i, 3).to_i
    n % d == 0
  end
end
