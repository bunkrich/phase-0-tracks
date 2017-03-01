#empty array for the list of final names
spy_array = []

#get name from user
orig_name = ''
puts "Welcome to the Spy Name Builder, please input your full name, when done please enter quit."

#beginning of loop
until orig_name == "quit"
	puts ""
	puts "What is your name?"
	orig_name = gets.chomp.downcase
	#swap the names by using new variable to hold the full name
	reverse_name_aray = orig_name.split(' ').reverse
	reverse_name = reverse_name_aray.join(' ')

	#if a letter is a vowl change it to the next vowl
	def vowel_move(str)
		vowels = ["a", "e", "i", "o", "u"]
		str = str.chars
		str_new = str.map do |char|
			if vowels.include?(char)
				vowels.rotate(1)[vowels.index(char)]
			else
				char
			end
		end
		str_new.join
	end

	#if a latter is a consonant change it to the next 
	def cons_move(str)
		consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
		str = str.chars
		str_new = str.map do |char|
			if consonants.include?(char)
				consonants.rotate(1)[consonants.index(char)]
			else
				char
			end
		end
		str_new.join
	end

	#convert the name back to the spy
	#runs the reverse word through the vowels def
	updated_word_from_vowels = vowel_move(reverse_name)
	#runs the new word through the consonant def
	new_spy_name = cons_move(updated_word_from_vowels)
	final_spy_name = new_spy_name.upcase
	
	#puts out new spy name
	puts "your new name is now:" 
	puts final_spy_name
	puts ""
	#asks user if they want to quit
	puts "type 'quit' to end or enter to continue"
	
	#this will fill each loop with the record
	spy_array.push("#{orig_name} is also known as #{final_spy_name}")
	orig_name = gets.chomp
end	
#prints out the final lists of runs of the loop
puts "Here is your fnal record of all the new spy names:"
puts spy_array

