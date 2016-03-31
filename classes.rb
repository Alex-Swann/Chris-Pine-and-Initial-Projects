class Die
  
  def roll
    @numberShowing = 1 + rand(6)
  end

  def initialize
    roll
  end
  
  def showing
    @numberShowing
  end
  
  def cheat(x)
    while x > 6 || x < 1 
      puts "Error! Wrong number. Cheat better!"
      e = gets.chomp
      x = e.to_i
    end
    @numberShowing = x
  end
  

end

puts "Enter number!"
input = gets.chomp
setDie = input.to_i
puts Die.new.cheat(setDie)