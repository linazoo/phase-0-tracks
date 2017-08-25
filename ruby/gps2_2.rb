# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
 #define method - split the string to seperate the items
 #add items as keys
# set default quantity, set value to empty
# print the list to the console [can you use one of your other methods here?]
# output: [hash]

# steps:
 #define method - split the string to seperate the items
 #add items as keys
# set default quantity, set value to empty
# print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
#define the method,
# input: list, item name, and optional quantity
# steps: shovle into list - grocery items
# output: print hash

# Method to remove an item from the list
# input: item we want to remove
# steps: use delete method to remove the item
# output: hash without the item

# def update_quantity(list, item, new_quantity)
#   list[item] = new_quantity
# end

# Method to update the quantity of an item
# input: first specify the item with the key -
#input the new quantity
# steps: use new item quantity
# output: hash with updated item quantity

# Method to print a list and make it look pretty
# input: specify with list to print
# steps: print out each key and value seperately (each do and print item)
# output: hash with key and value on seperate lines

# INITIAL SOLUTION

def grocery_list(items)
  list = {}
  items.split.each do |item, quantity|
    list[item] = 0
  end
  p list
end

def add_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item)
end

def show_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

# DRIVER CODE

list = grocery_list("carrots apples cereal pizza")

add_item(list, "oranges", 100)
p list

remove_item(list, "oranges")

p list

add_item(list, "apples", 100)
p list

show_list(list)