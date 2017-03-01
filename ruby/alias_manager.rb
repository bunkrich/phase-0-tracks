#get name from user
puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

#swap the names by using new variable to hold the full name
reverse_name = "#{last_name} #{first_name}"

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
	


