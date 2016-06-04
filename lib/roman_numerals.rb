class RomanNumerals
  def romanize(arabic)
    pull_digits(arabic, "")
  end

  private

  def pull_digits(arabic, roman)
    case arabic
    when 900..999
      roman << "CM"
      pull_digits (arabic.remainder 900), roman
    when 500..899
      roman << "D"
      pull_digits (arabic.remainder 500), roman
    when 400..499
      roman << "CD"
      pull_digits (arabic.remainder 400), roman
    when 100..399
      roman << "C" * (arabic/100)
      pull_digits (arabic.remainder 100), roman
    when 90..99
      roman << "XC"
      pull_digits (arabic.remainder 90), roman
    when 50..89
      roman << "L" 
      pull_digits (arabic.remainder 50), roman
    when 40..49
      roman << "XL" 
      pull_digits (arabic.remainder 40), roman
    when 10..39
      roman << "X" * (arabic/10)
      pull_digits (arabic.remainder 10), roman
    when 9
      roman << "IX"
    when 5..8
      roman << "V"
      pull_digits arabic - 5, roman
    when 4
      roman << "IV"
    when 1..3
      roman << "I" * arabic
    when 0
      roman
    else
      roman << "M" * (arabic/1000)
      pull_digits (arabic.remainder 1000), roman
    end
  end
end
