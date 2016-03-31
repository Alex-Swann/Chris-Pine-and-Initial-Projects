
text = gets.chomp

while text == ""
    puts "Please input string!"
    text = gets.chomp
end

arr = Array.new()
    while text != ""
        arr << text.split(" ")
        puts "Add another word or press Enter!"
        text = gets.chomp
    end


sarr = []
while !arr.empty?
    sarr << arr.delete(arr.min)
end

puts sarr