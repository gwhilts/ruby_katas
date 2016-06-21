class GildedRose
  attr_reader :name, :quality, :days_remaining

  def initialize(name, quality, days_remaining)
    @name, @quality, @days_remaining = name, quality, days_remaining
  end

  def update_quality
    case @name
    when /^Aged Brie/
      return brie_update
    when /^Sulfuras/
      return
    when /^Backstage pass/
      return backstage_pass_update
    when /^Conjured/
      return conjured_item_update
    else
      return normal_update
    end
  end

  private
  def normal_update
    @days_remaining -= 1
    @quality -= 1 if @days_remaining < 0
    @quality = [0, @quality - 1].max
  end

  def brie_update
    @days_remaining -= 1
    @quality += 1 if @days_remaining < 0
    @quality = [@quality + 1, 50].min
  end

  def backstage_pass_update
    @days_remaining -=1
    @quality += 1
    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 3
    @quality =  0 if @days_remaining < 0
  end

  def conjured_item_update
    @days_remaining -= 1
    @quality -= 2 if @days_remaining < 0
    @quality = [0, @quality - 2].max
  end


end
