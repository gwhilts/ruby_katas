class NameScores

  NAMES = File.open('names.txt') { |f| f.read.gsub('"', '').split(',').sort }

  class << self
    def score_of(name)
      s = score(name, NAMES.find_index(name) )
    end

    def grand_total
      total = 0
      NAMES.each_with_index do |name, index|
        total += score(name, index)
      end
      total
    end

    private
    def score(name, index)
      ( index + 1 ) * name.chars.inject(0) { |sum, c| (c.ord - 64) + sum }
    end
  end

end
