class Condiment

	def initialize (name, last)
		@name = name
		@last = last
		@food = ["smooth peanut butter", "crunchy peanut butter", "nutella", "strawberry jam", "raspberry jam"]
		puts "Hello #{@name}, #{@last}"
		
	end

	def  dave(txt)
		@input = txt.to_s
		while @input.downcase != "crunchy peanut butter" && @input.downcase != "nutella" && @input.downcase != "raspberry jam"
			if @input.downcase == "smooth peanut butter" || @input.downcase == "strawberry jam"
				puts "No sir…I said good day sir….GOOD DAY!!! (A grumpy email will be sent to you! Be afraid! Guess again!!!"
			else
				puts "No, Dave hasn't declared whether he likes this food or not. Give me another: HINT 
[Have a guess from the following 5 options which ones he likes/dislikes (smooth or crunchy peanut butter,
nutella, raspberry or strawberry jam] N.B. YOU ARE WARNED! Getting this wrong could result in a very English
email using current affairs as metaphors for the dire situation the ingredients in the 3rd floor are in!"
			end
			@input = gets.chomp
		end
		
		
		puts "Yes!!! Indeed!!! Dave welcomes you to come downstairs and have a nice cup of tea with him!"
		puts "The End!"
	end

end

puts "What's your first name?"
name = gets.chomp
puts "What's your last name?"
last = gets.chomp

x = Condiment.new(name, last)

puts "Give me a food and I'll tell you if Dave Watson likes it."
input = gets.chomp

x.dave(input)
