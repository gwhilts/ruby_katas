class Anagrams
  @@dict = {}

  def self.add_words(words)
    words.each do |word|
      key = key_for(word)
      @@dict[key] ||= []
      @@dict[key] << word
    end
  end

  def self.dict
    @@dict
  end

  def self.find_for(word)
    @@dict[key_for(word)].sort
  end

  private

  def self.key_for(word)
    word.downcase.chars.sort.join
  end

end
