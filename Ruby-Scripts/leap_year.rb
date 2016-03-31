
puts "Start year!"
start = gets.chomp.to_i

puts "End year!"
finish = gets.chomp.to_i

arr = (start..finish).to_a 

val = Array.new()

arr.each do |x| 
    if (x % 4 == 0 && x % 100 != 0) || x % 400 == 0
        val << x
    end
    end 

puts val



    
    