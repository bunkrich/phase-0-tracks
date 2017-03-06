# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

grocery_old_list = "carrots apples cereal pizza"

def transform_list(list)
	grocery_array = list.split(' ')
	example_list = {}
	grocery_array.each do |item|
		example_list[item] = 4
	end
	example_list
end

# steps: 
  # Create a hash that holds the name and quanitity
  # enter names / examples of products
  # set default quantity
  # print the list to the console -- Use last method to print
# output: print out product and quantity in the hash

grocery_list = {}

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define method, add item and quanity to specific list
# output: the new list

def add_item(list,new_item,item_count)
	list[new_item] = item_count
end

# Method to remove an item from the list
# input: get the hash/list name and the key to delete
# steps: then delete the key from the hash
# output: updated list, minus what we deleted

def delete_item(list,item)
	list.delete(item)
end

# Method to update the quantity of an item
# input: get the hash/list name, the key, and the upated quantity to change
# steps: update the quanityt number
# output: updated list with the new quantity

def update_quantity(list,item,item_count)
	list[item] = item_count
end

# Method to print a list and make it look pretty
# input: the list name
# steps: iterate through the list with a puts statement and interpelation
# output: a series of strings expressing what is contained in the list

def print_list(list)
	list.each do |item,count|
		puts "#{item}: #{count}"
	end
end



#####DRIVER CODE#####
# p add_item(grocery_list,"grape",4)
# p add_item(grocery_list,"carrot",5)
# p grocery_list
# p delete_item(grocery_list,"grape")
# p grocery_list
# p update_quantity(grocery_list,"carrot",7)
# p grocery_list
# p print_list(grocery_list)
transformed_list = transform_list(grocery_old_list)
print_list(transformed_list)
# puts transformed_list


# ----- Release 4: Reflect -----
# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

# What did you learn about pseudocode from working on this challenge?
# --- It's helpful to think ahead and plan out what you are going to be coding and problem solve first, then worry about syntax

# What are the tradeoffs of using arrays and hashes for this challenge?
# --- Arrays can't support more than piece of info that conects to another where a hash can, which was needed for this.

# What does a method return?
# ---The last part of code that was executed, or whatever is after a "RETURN"

# What kind of things can you pass into methods as arguments?
# --- pretty much any object in Ruby: arrays, hashes, strings, integers, etc

# How can you pass information between methods?
# --- use a class level variable or have a variable hold the return value when it's called

# What concepts were solidified in this challenge, and what concepts are still confusing?
# --- Basic method understanding is good, I still need work on the overall syntax