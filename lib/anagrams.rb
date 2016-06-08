class Anagrams
  attr_reader :dict

  def initialize(words=[])
    @dict = {}
    add_words(words)
  end

  def add_words(words)
    words.each do |word|
      key = key_for(word)
      @dict[key] ||= Set.new
      @dict[key] << word.strip
    end
  end

  def find_for(word)
    @dict[key_for(word)].sort
  end

  private

  def key_for(word)
    word.downcase
        .gsub(/[é|ë|ê|è]/, 'e')
        .gsub(/ñ/, 'n')
        .gsub(/[^a-z]/, '')
        .chars.sort
        .join
  end

end
