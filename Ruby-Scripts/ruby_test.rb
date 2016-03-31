

puts "What's your full name?"
name = gets.chomp

var = name.gsub(/ /, "")

puts "Did you know you have #{var.length} letters in your name?"

l = 100
puts ("Ouch!".center(l))

puts "HEY I'M YOUR BOSS DOUCHEBAG!"

demand = gets.chomp

demand.upcase!

puts "WHAT DO YOU MEAN \"#{demand}\" FUCK YOU YOU'RE FIRED!!!!"


w = 50
pup = 100
puts "Table of Contents".center(pup)
puts "Chapter 1: Numbers".ljust(w) + "Page 1".rjust(w)
puts "Chapter 2: Letters".ljust(w) + "Page 72".rjust(w)
puts "Chapter 3: Variables".ljust(w) + "Page 116".rjust(w)