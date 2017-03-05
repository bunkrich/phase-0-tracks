
# class TodoList 

# 	def get_items(new_todos)
# 		p new_todos
# 	end


# 	todolist_array = ["do the dishes", "mow the lawn"]
# 	get_items(todolist_array)
# end

class TodoList
	def initialize (list)
		@list = list
	end

	def get_items
		@list
	end

	def add_item(new_item)
		@list << new_item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(item)
		@list[item]
	end
end

# class TodoList
# 	def initialize (item1,item2)
# 		todolist_array = [item1,item2]
# 	end

# 	def add_items(new_item)
# 		list.push(new_item)
# 	end

# 	def delete_item(item)
# 		tolist_array.delete(item)
# 	end

# 	def get_item(item)
# 		todolist_array.index(item)
# 	end
# end
#add_items("mop")