

puts "HUH?"
speak = gets.chomp

while speak.gsub( / /, "") != "BYEBYEBYE"
    while speak != speak.upcase
        puts "WHAT?!!!"
        speak = gets.chomp
    end
    n = rand((1900..2000))
    puts "NO, NOT SINCE #{n}!"
    speak = gets.chomp
end

puts "BYE"