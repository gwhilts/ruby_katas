class NumberWords
  WORDS = {
     0 => '',
     1 => 'one',
     2 => 'two',
     3 => 'three',
     4 => 'four',
     5 => 'five',
     6 => 'six',
     7 => 'seven',
     8 => 'eight',
     9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety'
  }

  def self.say(num)
    response = ''

    knum, num = num.divmod 1000
    cnum, num = num.divmod 100
    stupid_and = has_and cnum, num
    dnum, num = num.divmod 10 if num > 19

    response << thousands(knum) << 
                hundreds(cnum)  <<
                stupid_and      <<
                tens(dnum)      <<
                WORDS[num]
    
    response.strip
  end

  def self.letter_count(low = nil, high)
    low ||= high
    (low..high).reduce(0) do |count, n|
      count + ( (say n).gsub(/[^a-z]/, '').size)
    end
  end

  private

  def self.thousands(digit)
    digit == 0 ? '' : "#{ WORDS[digit] } thousand "
  end

  def self.hundreds(digit)
    digit == 0 ? '' : "#{ WORDS[digit] } hundred "
  end

  def self.tens(digit)
    (!digit || digit == 0) ? '' : "#{ WORDS[digit * 10] } "
  end

  def self.has_and(cnum, num)
    cnum * num == 0 ? '' : 'and '
  end

end
