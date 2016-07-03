class Grid
  class << self
    def largest_product(grid)
      largest = 0
      grid.each_with_index do |row, y|
        row.each_index do |x|
          largest = [ largest, horizontal(grid, x,y),
                               vertical(grid, x,y),
                               r_diag(grid, x,y), 
                               l_diag(grid, x,y) ].max
        end  
      end
      largest
    end

    private
    def horizontal(grid, x, y)
      if x < 17
        grid[y].slice(x, 4).inject(:*)
      else
        0
      end
    end

    def vertical(grid, x, y)
      if y < 17
        [ grid[y][x], grid[y+1][x], grid[y+2][x], grid[y+3][x] ].inject(:*)
      else
        0
      end
    end

    def r_diag(grid, x, y)
      if x < 17 && y < 17
        [ grid[y][x], grid[y+1][x+1], grid[y+2][x+2], grid[y+3][x+3] ].inject(:*)
      else
        0
      end
    end

    def l_diag(grid, x, y)
      if x > 2 && y < 17
        [ grid[y][x], grid[y+1][x-1], grid[y+2][x-2], grid[y+3][x-3] ].inject(:*)
      else
        0
      end
    end
  end
end
