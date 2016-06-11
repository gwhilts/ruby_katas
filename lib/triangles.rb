class Triangles
  def self.first_with_factor_count(c)
    factors = []
    t = n = 0
    while factors.count < c do
      n += 1  
      t = t + n  
      factors = (1..t).select { |f| (t % f).zero? }  
    end  
    t
  end
end
