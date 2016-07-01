class Pyramid
  class << self

    def maximum_path_sum(pyramid)
      ( pyramid.reduce([0]) { |sums, row| add_row sums, row } ).max
    end

    def add_row(sums, row)
      row.each_with_index.map do |n, i|
        s = case i
            when 0
              sums[0]
            when ( row.size - 1 )
              sums[ i - 1 ]
            else
              [ sums[i],  sums[ i - 1 ] ].max
            end
        n + s
      end
    end

  end
end
