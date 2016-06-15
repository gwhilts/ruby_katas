class Collatz
# Project Euler Problem no. 14
#  The following iterative sequence is defined for the set of positive integers:
#
#     n → n/2 (n is even)
#     n → 3n + 1 (n is odd)
#   
#   Using the rule above and starting with 13, we generate the following sequence:
#   
#     13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#   
#   It can be seen that this sequence (starting at 13 and finishing at 1) contains 
#   10 terms. Although it has not been proved yet (Collatz Problem), it is thought 
#   that all starting numbers finish at 1.
#   
#   Which starting number, under one million, produces the longest chain?

  def self.next_collatz(n = 1)
    n.even? ? n / 2 : 3 * n + 1
  end

  def self.sequence_from(n)
    seq = []
    while n > 1
      seq << n
      n = next_collatz n
    end
    seq << 1
  end

  def self.longest_under(limit)
    longest = [0, 0]
    
    (1..limit).each do |start|
      size = sequence_from(start).size
      if size > longest[1]
        longest = [start, size]
      end
    end

    { start: longest[0], length: longest[1] }
  end

end
