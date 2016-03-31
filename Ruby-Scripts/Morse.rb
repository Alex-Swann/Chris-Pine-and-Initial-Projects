$morse_dict = Hash[
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--..",
  " " => " ",
  "1" => ".----",
  "2" => "..---",
  "3" => "...--",
  "4" => "....-",
  "5" => ".....",
  "6" => "-....",
  "7" => "--...",
  "8" => "---..",
  "9" => "----.",
  "0" => "-----",
  "SOS" => "...---...",
  "sos" => "...---...",
  "!" => "-.-.--",
  "." => ".-.-.-"
]


def decodeBits(bits)
  bit_chars = []
  bits.scan(/((.)\2*)/) { |x| bit_chars.push(x[0]) }
  bit_chars.map!{|x| if x.include?("1") && x.length < 3; x = "." end}
  
			print bit_chars	  			
    bit_words = bits.split("00000000000000")
    bit_words.each{|x| bit_chars << x.split("000000")}
    bit_chars.map!{|x| x.map{|y| y.gsub(/111111/,"-").gsub(/11/,".").gsub(/0/,"")}}.map!{|x| x.join(" ")}
    return bit_chars.join("   ").to_s
end


def decodeMorse(morseCode)
    words = []
		if morseCode.start_with? ".", "-"
			 arr = morseCode.split("   ")
			 arr.each{|x| words << x.split(" ")}
			 words.map!{|x| x.map{|y| $morse_dict.key(y)}}.map!(&:join)
			 return words.join(" ").upcase
		else
			arr = morseCode.downcase.split(" ")
			arr.each{|x| words << x.split("")}
			words.map!{|x| x.map{|y| $morse_dict[y]}}.map!{|x| x.join(" ")}
			return words.join("   ")
		end
end


  
=begin
puts "Please enter Morse Code to be decoded! Alternatively start with either a letter or number in order for your text to be converted to Morse."
puts decodeMorse(gets.chomp)
=end

puts decodeMorse(decodeBits('0001110010101000011111100001110010000010000000011101011100001'))