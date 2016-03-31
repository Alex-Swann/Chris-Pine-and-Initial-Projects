
def age(input)
    
    y = input.downcase.split(" ")
    x = Hash.new
    x = y.collect { |k, v| k <=> v }
  
    puts "#{x}"
    
    
    arrm = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]

    years = (((((Time.now - Time.mktime(1986, 6, 29, 9, 30)) / 60) / 60) / 24) / 365 )

    mfrac = years - years.to_i

    m = (12 * mfrac)

    months = m.to_i

    days = 30 * (m - m.to_i)
    
    puts "You are approximately #{years.to_i} years, #{months} months, #{days.to_i} days old. How do you feel?"
    
end


puts "Please enter the date you were born!"

input = gets.chomp

age(input)




