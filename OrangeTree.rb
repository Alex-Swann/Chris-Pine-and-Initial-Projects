class Tree
    
    def initialize (name, year)
        @name = name
        @age = 0
        @height = 0
        @year = year.to_i
        @init_year = year.to_i
        
        puts "Your #{@name.capitalize} tree has started to grow."
        oneYearPasses
    end
    
    
    def numberFruit 
        @fruit = 0
        if @age >= 3
          @fruit = (2**(@year - (@init_year+2))).round
        end
    end 
    
    def pickFruit
        if @fruit > 0
            @fruit -= 1
            puts "You've taken one #{@name}. There are #{@fruit} #{@name}s on the tree."
        end
        
        if @fruit == 0
            puts "Oops! You've picked all the #{@name}s. There are none left!!!"
        end
    end
    
    private 
    
    def oneYearPasses
        @age = @age + 1
        @height = @height + 0.5
        @year = @year + 1
        numberFruit
        
        if old? == true
            puts "Your tree grew old after a happy life and withered away. I hope you enjoyed its fruit :-)"
            puts "The End!"
            exit
        end
        
        
        if @age <= 2
            puts "A year passes and your tree grows." 
            fullStats
            puts "However it's still too young to bear any fruit. 
            Therefore should we go ahead a year? 
            Or, if you would like to know the age of your tree, its height, the number of oranges it has or the current year, then please type 
            either: 'age', 'height', '#{@name}s' or 'year' respectively."
            @txt = gets.chomp
            
            if @txt.downcase == "yes"
                puts "Very well, onwards!"
                oneYearPasses
            elsif @txt.downcase == "no"
                puts "Well that wasn't a helpful answer. In that case..."
                ahead
            elsif @txt.downcase == "pick"
                pickFruit
                ahead
            else 
                stats
                ahead
            
            end
        end
        
        if @age > 2
            puts "A year passes and your tree grows." 
            fullStats
            puts "It's another summer and your tree has fruit on its branches. Would you like to know how old it is,
            what year it is, it's height or the number of fruit it has ['age', 'height', '#{@name}s' or 'year']? 
            Or shall we see how much fruit it will have next year? You can even \"pick\" a fruit if you like :-D"
            @txt = gets.chomp
            
          if @txt.downcase == "yes"
                puts "Very well, onwards!"
                oneYearPasses
            elsif @txt.downcase == "no"
                puts "Well that wasn't a helpful answer. In that case..."
                ahead
            elsif @txt.downcase == "pick"
                pickFruit
                ahead
            else 
                stats
                ahead
            
            end
        end
            
    end
    
    def ahead
    puts "Would you like to go ahead a year or receive any other info [age, height, #{@name}s or year]? Or would you like to pick one #{@name}? If there are any hehe."
        @txt = gets.chomp
        
            while @txt == "pick"
            pickFruit
            puts "Would you like to go ahead a year or receive any other info [age, height, #{@name}s or year]? 
            Or would you like to pick another #{@name}? If there are any hehe."
            @txt = gets.chomp
            end
        
            while @txt != "yes"
                    while @txt == "no"
                        puts "Well I guess we'll just sit her until you type \"yes\" then. 
                        Unless you'd still like any further information [age, height, #{@name}s or year]?"
                        @txt = gets.chomp
                    end
                    stats
                    puts "Please confirm with \"yes\" to move forward."
                    @txt = gets.chomp
            end
            
            if @txt == "yes"
                puts "One year passes!"
            end
        oneYearPasses
    end
    
    def old?
        @age == 6
    end
    
    def stats
        if @txt.downcase == "age"
                    puts @age
                    puts "Here are requested stats. Shall we move forward?"
        elsif @txt.downcase == "height"
                    puts @height
                    puts "Here are requested stats. Shall we move forward?"
        elsif  @txt.downcase == "year"
                    puts @year
                    puts "Here are requested stats. Shall we move forward?"
        elsif @txt.downcase == "#{@name}s"
                puts @fruit
                puts "Here are requested stats. Shall we move forward?"
        elsif @txt.downcase != "yes"
            puts "I'm sorry. Those stats don't exist. Please type in the following [age, height, #{@name}s, pick or year] or 'yes' to move forward!"
        else
        end
    end
        
        
    def fullStats
        puts "Your tree is #{@height} metres tall."
        puts "Your tree is #{@age} years old."
        puts "The year is #{@year}."
        puts "Your tree has #{@fruit} #{@name}s."
    end
    
 
end

puts "What type of tree would you like to grow?"
input1 = gets.chomp
puts "What current year is it?"
input2 = gets.chomp
Tree.new(input1, input2)



