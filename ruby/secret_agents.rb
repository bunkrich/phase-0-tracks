# caesar cipher 



message = "abcdefghijklmnopqrstuvwxyz"


def encrypt(message)

	message_length = message.length

	current_index = 0

	cipher_word = ""

	until message_length == current_index 
		cipher_letter = message[current_index].next
		current_index += 1
		cipher_word = cipher_word + cipher_letter
	end 
puts cipher_word
end
cipher_word = encrypt(message)

puts "what was the cipher word?"
cipher_word1 = gets.chomp


def decrypt(cipher_word1)

	cipher_length = cipher_word1.length

	current_index = 0

	solution_word = ""

	solution_number = 0

	cipher_number = 0

	"abcdefghijklmnopqrstuvwxyz".index("solution_letter")

	until cipher_length == current_index 
		cipher_letter = cipher_word1[current_index]
		cipher_number = "abcdefghijklmnopqrstuvwxyz".index(cipher_letter)
		solution_number = cipher_number - 1
		solution_letter = "abcdefghijklmnopqrstuvwxyz"[solution_number]
		current_index += 1
		solution_word = solution_word + solution_letter
	end 

puts solution_word

end

decrypt(cipher_word1)



