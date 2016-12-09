def greeting(num)
  puts "Hello"
  if num == 1
    return
  else
    greeting(num - 1)
  end
end

greeting(10)

def even_count(num)
 puts num
  if num == 100
   return 100
  else
    even_count(num + 2)
  end
end


even_count(2)
puts "--------------------------"

def fib_count(num1 = 1, num2 = 1)
  puts num1, num2
  if num2 == 987
    return
  else
   fib_count(num1 = (num1 + num2), num2 = (num2 + num1))
  end
end

fib_count()

#
# def recursive_sum(arr)
#   n_array = []
#   sum.
#   if arr.empty?
#     return sum
#   else
#    sum += arr.pop
#    recursive_sum(arr)
#   end
# end
#
# recursive_sum([3,2,4,5])

def reverse_recursion(string, reverse = "")
  if string.length == 0
    puts reverse
  else
    n_array = string.split("")
    reverse << n_array.pop
    reverse_recursion(n_array.join, reverse)
  end
end

reverse_recursion("hello")

def division(num, dem)
  remainder = (num / dem) * dem
     9/2 * 2 = 8 

  if num < dem
    puts num
  else
    division(num - remainder, dem)
  end
end

puts "This is your remainder"
division(8, 2)
