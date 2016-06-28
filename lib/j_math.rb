require 'prime'

class JMath
  class << self
    def digits(n)
      n.to_s.chars.map { |d| d.to_i }
    end

    def factorial(n)
      n.downto(1).inject(:*)
    end
  end
end
