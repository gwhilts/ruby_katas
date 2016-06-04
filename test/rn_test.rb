require 'test_helper'
require 'roman_numerals'

describe RomanNumerals do
  describe "#romanize" do
    let(:rn) { RomanNumerals.new }

    it "converts numbers between 1 and 3" do
      ( rn.romanize(1) ).must_equal "I" 
      ( rn.romanize(3) ).must_equal "III" 
    end

    it "converts numbers ending in 4" do
      ( rn.romanize(4) ).must_equal "IV" 
    end
    it "converts numbers between 5 and 8" do
      ( rn.romanize(5) ).must_equal "V" 
      ( rn.romanize(7) ).must_equal "VII" 
    end
    it "converts numbers ending in 9" do
      ( rn.romanize(9) ).must_equal "IX" 
    end
    it "converts numbers between 10 and 39" do
      ( rn.romanize(10) ).must_equal "X" 
      ( rn.romanize(17) ).must_equal "XVII" 
    end
    it "converts numbers between 40 and 49" do
      ( rn.romanize(43) ).must_equal "XLIII" 
    end
    it "converts numbers between 50 and 89" do
      ( rn.romanize(56) ).must_equal "LVI" 
    end
    it "converts numbers between 90 and 99" do
      ( rn.romanize(92) ).must_equal "XCII" 
    end
    it "converts numbers between 100 and 399" do
      ( rn.romanize(123) ).must_equal "CXXIII" 
      ( rn.romanize(371) ).must_equal "CCCLXXI" 
    end
    it "converts numbers between 400 and 499" do
      ( rn.romanize(448) ).must_equal "CDXLVIII" 
    end
    it "converts numbers between 500 and 899" do
      ( rn.romanize(509) ).must_equal "DIX" 
      ( rn.romanize(840) ).must_equal "DCCCXL" 
    end
    it "converts numbers between 900 and 999" do
      ( rn.romanize(912) ).must_equal "CMXII" 
    end
    it "converts numbers larger than 1000" do
      ( rn.romanize(1066) ).must_equal "MLXVI" 
      ( rn.romanize(2437) ).must_equal "MMCDXXXVII" 
    end
  end
end
