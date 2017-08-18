# def search_array (arr, num)
#   index = 0
#   answer = 0
#     while index < arr.length
#     if num == arr[index]
#        answer += index
#   end
#   index += 1
#   end
#   if answer == 0
#     puts "nil"
#   else
#     puts answer
#   end
# end

# array = [42, 89, 23, 1]
# puts search_array(array, 50)

#-------------------------------------------------

# def fibonacci(num)
#   array = []
#   index = 0
#   while index < 2
#     array << index
#     index += 1
#   end
#   while index >= 2 && index < num
#     array << array[index -1] + array[index -2]
#     index += 1
#   end
#   array
# end

# puts fibonacci(100)

#-----------------------------------
#Bubble Sort

#begin with array of numbers
#create a while loop where index is less than array.length - 1
#compare array at index with array at index + 1
#if its greater than - we want to swap it but if its less than do nothing

def number_swap(array)
  index = 0
  while index < array.length - 1
    if array[index] > array[index + 1]
      variable_1 = array[index]
      variable_2 = array[index + 1]
      array[index] = variable_2
      array[index + 1] = variable_1
    end
  index += 1
  end
  array
end

arr = [12, 35, 87, 26, 9, 28, 7]
puts number_swap(arr)

#Should equal [12, 35, 26, 9, 28, 7, 87]















