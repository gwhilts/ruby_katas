class RomanNumerals
  ROMANS = {
    1000 => 'M',
    500  => 'D',
    100  => 'C',
    50   => 'L',
    10   => 'X',
    5    => 'V', 
    1    => 'I'
  }

  ROMAN_SHORTS = {
    'DCCCC' => 'CM',
    'CCCC'  => 'CD',
    'LXXXX' => 'XC',
    'XXXX'  => 'XL',
    'VIIII' => 'IX',
    'IIII'  => 'IV'
  }

  def romanize(arabic)
    compact( build_up(arabic) )
  end

  private

  def build_up(number)
    roman = ''
    ROMANS.keys.reduce(number) do |num, key|
      reps, next_num = num.divmod key
      roman << ROMANS[key] * reps
      next_num
    end
    roman
  end

  def compact(roman)
    ROMAN_SHORTS.keys.reduce(roman) do |big_roman, r_digits|
      big_roman.gsub( r_digits, ROMAN_SHORTS[r_digits] )
    end
  end

end
