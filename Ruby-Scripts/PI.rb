def get_pins(n)
  combo = Hash[
  "1" => ["1","2","4"],
  "2" => ["1","2","3","5"],
  "3" => ["2","3","6"],
  "4" => ["1","4","5","7"],
  "5" => ["2","4","5","6","8"],
  "6" => ["3","5","6","9"],
  "7" => ["4","7","8"],
  "8" => ["5","7","8","9","0"],
  "9" => ["6","8","9"],
  "0" => ["8","0"]
  ]
  
  total = []
  arr = n.split("").map!{|x| combo[x]}
  arr2 = n.split("").map!{|x| combo[x]}
  loops = arr.count
  
   print arr
  
  while loops > 1
    total << arr[0].map{|x| arr[1].map{|y| x + y}}
    arr.shift(1)
    #total << arr2[0].map{|x| arr2[1].map{|y| x + y}}
   # arr2.shift(1)
    loops -= 1
  end
  
 
  
  print total
 
 # return new[0]
end

x = "123"
get_pins(x)