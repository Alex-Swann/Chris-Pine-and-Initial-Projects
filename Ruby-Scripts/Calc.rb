class Calculator
  def evaluate(string)
     indices = []
     ops = ["/", "*", "+", "-"]
      chars = string.split(" ")
      chars.map! {|x| (ops.include? x) ? x : x.to_i }
      
      ops.each do |o|
      chars.map do |y| 
         if y == o 
            indices << (chars.index(y) - 1)
            indices << (chars.index(y) + 1)
        end
      end
      chars.map! { |z|  z == o ? chars[(chars.index(z))-1].method(z).(chars[(chars.index(z))+1]) : z }
      #chars.delete_if {|e| indices.include? chars.index(e) }
      chars.each_index {|e| (indices.include? e) ? chars.delete(e) : e }
      indices = []
    end
    
      return chars[0]
  end
end

print Calculator.new.evaluate("2 / 2 + 3 * 4 - 6")