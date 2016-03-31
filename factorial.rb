=begin
def zeros(n)
   arr = []
   x = (1..n).inject(:*) || 1
   x.to_s.scan(/((.)\2*)/) { |x| arr.push(x[0]) }
   arr[-1].include?("0") ? arr[-1].size : nil

end
=end

def zeros(n)
return 0 if n.zero?
  k = (Math.log(n)/Math.log(5)).to_i
  m = 5**k
  n*(m-1)/(4*m)
end

puts zeros(100000000000000000000000000000)