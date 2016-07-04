class Spiral
  attr_reader :table

  def initialize(size = 3)
    @size = size
    @table = build_empty_grid(size)
    @x = @y = size / 2
    fill_in_grid
  end

  def print
    @table.each do |row|
      row.each { |n| printf "%5d", n }
      printf "\n"
    end
  end

  def sum_of_diagonals
    sum = 0
    (0..(@size-1)).each do |d|
      sum += @table[d][d]
      sum += @table[(@size - d - 1)][d]
    end
    sum -= @table[@size/2][@size/2]
  end

  private

  def build_empty_grid(size)
    row = (0..(size-1)).map { nil }
    (0..(size-1)).map { row.clone }
  end

  def fill_in_grid
    @n = 1
    @table[@y][@x] = @n
    c = 1
    while @n < @size**2
      move_right(1)
      move_down(c)
      c += 1
      move_left(c)
      move_up(c)
      c += 1
      move_right(c-1)
    end
  end
  def move_right(c)
    c.times do
      @n += 1 
      @x += 1
      @table[@y][@x] = @n
    end
  end

  def move_down(c)
    c.times do
      @n += 1
      @y += 1
      @table[@y][@x] = @n
    end
  end

  def move_left(c)
    c.times do
      @n += 1
      @x -= 1
      @table[@y][@x] = @n
    end
  end

  def move_up(c)
    c.times do
      @n += 1
      @y -= 1
      @table[@y][@x] = @n
    end
  end
end
