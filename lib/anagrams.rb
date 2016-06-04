class Anagrams

  attr_reader :dict

  def initialize(words=[])
    @dict = {}
    add_words(words)
  end

  def add_words(words)
    words.each do |word|
      key = key_for(word)
      @dict[key] ||= []
      @dict[key] << word
    end
  end

  def find_for(word)
    @dict[key_for(word)].sort
  end

  private

  def key_for(word)
    word.downcase.chars.sort.join
  end

end
