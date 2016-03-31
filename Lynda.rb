
def fib(n)
arr = [1,1]
(n-2).times do |x|
        arr << arr[-1] + arr[-2]
    end
    
    arr[0..-1]
end



def get_last_digit(index)
  arr = [1,1]
  (index-2).times do |x|
  arr << arr[-1] + arr[-2]
  end
  return arr[-1] % 10
end


puts get_last_digit(19303345)