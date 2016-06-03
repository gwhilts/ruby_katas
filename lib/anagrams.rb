class Anagrams
  @@dict = {}

  def self.add_words(words)
    words.each do |word|
      key = word.downcase.chars.sort.join
      @@dict[key] ||= []
      @@dict[key] << word
    end
  end

  def self.dict
    @@dict
  end

end
