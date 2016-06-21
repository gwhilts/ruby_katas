module GildedRose
  def self.new(name, quality, days_remaining)
    klass_for(name).new(quality, days_remaining)
  end

  def self.klass_for(name)
    case name
    when /^Aged Brie/
      BrieItem
    when /^Sulfuras/
      Item
    when /^Backstage pass/
      BackstagePassItem
    when /^Conjured/
      ConjuredItem
    else
      NormalItem
    end
  end

  class Item
    attr_reader :name, :quality, :days_remaining

    def initialize(quality, days_remaining)
      @quality, @days_remaining = quality, days_remaining
    end

    def update_quality
    end
  end

  class NormalItem < Item
    def update_quality
      @days_remaining -= 1
      @quality -= 1 if @days_remaining < 0
      @quality = [0, @quality - 1].max
    end
  end

  class BrieItem < Item
    def update_quality
      @days_remaining -= 1
      @quality += 1 if @days_remaining < 0
      @quality = [@quality + 1, 50].min
    end
  end

  class ConjuredItem < Item
    def update_quality
      @days_remaining -= 1
      @quality -= 2 if @days_remaining < 0
      @quality = [0, @quality - 2].max
    end
  end

  class BackstagePassItem < Item
    def update_quality
      @days_remaining -=1
      @quality += 1
      @quality += 1 if @days_remaining < 10
      @quality += 1 if @days_remaining < 5
      @quality =  0 if @days_remaining < 0
    end
  end

end
