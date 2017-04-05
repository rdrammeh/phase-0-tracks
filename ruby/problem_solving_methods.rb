### RELEASE 0 ###

numbers = [5, 17, 23, 36, 42, 58, 66, 78, 80]

def search_array(arr, x)
  numbers = arr
  index = 0 
  while index < numbers.length
    numbers.each do |search|
      if search == x
        p index
      end
      index += 1
    end
  end
end

search_array(numbers, 36)







































# def good_years (arr, x)
#   arr = [2010, 2012, 2015, 2017]
# end
# 
# p good_years(arr, 2012)
# 
# 
# def fib(number)
#   arr = [0, 1, 1, 2, 3, 5, "number"]
#   arr.next = arr.last + arr.index[-2]
# end
# 
# fib(7)
