class Primes

    def self.first(n)
       arr = [2]
       y = 3
       while arr.count < n
              Math.sqrt(y).to_i.downto(2).each do |i| 
                  if y % i == 0
                      y += 1
                      redo
                  end
                   arr << y
              end
       end
       
        print arr
    end
     
 end
 
Primes.first(4)