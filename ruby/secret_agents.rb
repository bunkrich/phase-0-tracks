# ask for encrypt or decrypt a password to get a strng 
puts "Would you like to encrypt or decrypt a password?"

crypt_choice = gets.chomp 

# get the password to prep for calling either method in encrypt or decrypt 
puts "What's the password?"

input = gets.chomp 

# caesar shift experimental idea
# so, if the password-maker wanted to be sneakier,
# they could vary the shift that was used to encrypt the message
# in case someone figured out they were shifting each letter by 1
puts "What is the caesar shift for the message? (1 for +1)"

shift = gets.chomp

# define the method encrypt if it's called 
# had to add shift next to method because the 
# variable was defined outside of the method 
def encrypt(input,shift)

	# determine the amount of times we need to index and 
	# increment output string by finding length of pass
	input_length = input.length 

	# define the variable that will be the integer intermediary between output
	# and input that's incremented by the shift of 1
	input_number = 0

	# set the variable for current index/count of the method 
	# so that it runs only as long as the input length determines 
	current_index = 0 

	# define the variable that's the second intermediary after input_number
	# between input and just before output that has already been incremented
	# by the shift 
	output_number = 0

	# output is the result of the method after input, input_number, and 
	# out_put number. It also gets added itself by itself in an interpolation 
	# at the end of the until loop 
	output = ""

	# the alphabet variable so we don't have to put the lowercase alphabet string  
	# within the until loop
	alphabet = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
	# need to double it because z or latter letters will go to first
	# anyway in the indexing process. 


	shift = shift.to_i
	# we want the input to be only indexed and incremented 
	# as much as it needs to be. That way it will only run
	# for the length of any password
	until input_length == current_index

		# breaking apart without map the first character 
		# of the input and figuring to figure out its number to increment
		input_letter = input[current_index]

		# since we can't increment reliably with next 
		# even the input string needs to be incremented as an
		# integer. could also setup incrementing by more than 1 shift
		input_number = alphabet.index(input_letter)

		# transforming input number on alphabet to output number
		# by adding 1 shift to input number character 
		output_number = input_number + shift

		# use that output number to become a string again
		# by indexing it on as an output letter 
		output_letter = alphabet[output_number] 

		# iterating the index one forward for only 
		# as long as the input length dictates 
		current_index += 1

		# interpolating the output one output letter forward 
		# each time the input length indexes and increments 
		# one letter. Like the Enigma almost 
		output = output + output_letter
	end 

#  printing the incremented output string 
# outside of the loop so we don't see the 
# typewriter incrementing in action  
# though that could be cool 
puts output

end 

# only shows the method running if 
# encrypt choice is picked 
if crypt_choice == "encrypt"
	encrypt(input,shift)
end 

def decrypt(input,shift)
	# determine the amount of times we need to index and 
	# increment output string by finding length of pass
	input_length = input.length 

	# define the variable that will be the integer intermediary between output
	# and input that's incremented by the determined shift
	input_number = 0

	# set the variable for current index/count of the method 
	# so that it runs only as long as the input length determines 
	current_index = 0 

	# define the variable that's the second intermediary after input_number
	# between input and just before output that has already been incremented
	# by the shift 
	output_number = 0

	# output is the result of the method after input, input_number, and 
	# out_put number. It also gets added itself by itself in an interpolation 
	# at the end of the loop 
	output = ""

	# the alphabet variable so we don't have to put the lowercase alphabet string  
	# within the until loop
	alphabet = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
	# need to double it because z or latter letters will go to first
	# anyway in the indexing process. That conditional logic will help.

	shift = shift.to_i
	# we want the input to be only indexed and incremented 
	# as much as it needs to be. That way it will only run
	# for the length of any password	
	until input_length == current_index

		# breaking apart without map the first character 
		# of the input and figuring to figure out its number to increment
		input_letter = input[current_index]
		
		# since we can't increment reliably with prev or some map-needed thing
		# even the input string needs to be incremented as an
		# integer. could also setup incrementing by more than 1 shift
		input_number = alphabet.index(input_letter)

		# transforming input number on alphabet to output number
		# by subtracting determined caesar shift to input number character
		output_number = input_number - shift

		# use that output number to become a string again
		# by indexing it on as an output letter 
		output_letter = alphabet[output_number] 

		# iterating the index one forward for only 
		# as long as the input length dictates 
		current_index += 1

		# interpolating the output one output letter forward 
		# each time the input length indexes and increments 
		# one letter. Like the Enigma almost 
		output = output + output_letter
	end 

#  printing the incremented output string 
# outside of the loop so we don't see the 
# typewriter incrementing in action  
# though that could be cool 
puts output

end 

# only shows the method running if 
# encrypt choice is picked 
if crypt_choice == "decrypt"
	decrypt(input,shift)
end 

decrypt(encrypt("swordfish",1))
# This works because both methods are running before the 
# call anyway. And the input doesn't neccessarily have to
# be a gets chomp. We can just use the input in the method call.
# Add a 1 because, with experimental caesar feature, it wouldn't work 
# without the additon next to swordfish with the default 1 

