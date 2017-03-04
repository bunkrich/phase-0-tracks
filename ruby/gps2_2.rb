# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")


# steps: 
  # Create a hash that holds the name and quanitity
  # enter names / examples of products
  # set default quantity
  # print the list to the console -- Use last method to print
# output: print out product and quantity in the hash

grocery_list = { 
}

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define method, add item and quanity to specific list
# output: the new list
def add_item(list,new_item,item_count)
	list[new_item] = item_count
end

p add_item(grocery_list,"grape",4)
p grocery_list

# Method to remove an item from the list
# input: get the hash/list name and the key to delete
# steps: then delete the key from the hash
# output: updated list, minus what we deleted

# Method to update the quantity of an item
# input: get the hash/list name, the key, and the upated quantity to change
# steps: update the quanityt number
# output: updated list with the new quantity

# Method to print a list and make it look pretty
# input: the list name
# steps: iterate through the list with a puts statement and interpelation
# output: a series of strings expressing what is contained in the list