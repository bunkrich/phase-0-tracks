class WordGame
	attr_reader :guess_count, :is_over, :secret_word
	attr_accessor :guess,  :guess_letters, :guess_letter_multiple, :guess_letter_check, :letter, :spot_change, :guess_word_check, :count_check

	
	def initialize (secret_word)
		@secret_word = secret_word.split("")
		@guess_count = secret_word.length + 5
		@is_over = false
		@guess = guess
		@guess_word_space = ("_" * secret_word.length)
		@guess_word = @guess_word_space.split("")
		@guess_letters = []
		@letter = letter
	end

#checks on the number of counts, if you get to 0 you lose.
	def count_check
		puts @guess_word.join(" ")
		if @guess_count == 0
			puts "Sorry, you lose!"
			@is_over = true
		end
	end

#checks if there is a multiple letter
	def guess_letter_multiple(letter1)
		if @guess_letters.include? letter1
			puts "You have already tried this letter..."
		else
			@guess_count -= 1
			puts "Remaining guesses: #{guess_count}"
			@guess_letters << letter1
		end
	end
	 
#checks if the letter is in the word then returns the array showing the blank spots and the right letter
	def guess_letter_check(letter1)
		if @secret_word.include? letter1
			spot_change = @secret_word.index(letter1)
			@guess_word.delete_at(spot_change)
			@guess_word.insert(spot_change,letter1)
			puts "Good Job!"
		else 
			puts "Sorry wrong letter..."
		end
	end

#checks if word is right
	def guess_word_check
		if @secret_word != @guess_word
			@is_over = false
		else 
			@is_over = true
			puts "YOU WON!"
		end
	end
end


# ----- Driver Code -----#
puts "Welcome to the Word Game!"
#player one input
secret_word_input = "unkrich"
winner_word = WordGame.new(secret_word_input)

#player two input
while !winner_word.is_over
	puts "Guess a letter..."
	guess_letter_input = gets.chomp
	
	winner_word.guess_letter_multiple(guess_letter_input)
	winner_word.guess_letter_check(guess_letter_input)
	winner_word.guess_word_check
	winner_word.count_check
end