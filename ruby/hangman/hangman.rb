class CupGame
	attr_reader :guess_count, :is_over, :secret_word
	attr_accessor :guess

	
	def initialize (secret_word)
	  p "start"
		@secret_word = secret_word.split("")
		@guess_count = secret_word.length + 5
		@is_over = false
		@guess = guess
		@guess_word = ("_ " * secret_word.length)
	end
	

	def check_word(guess_word)
		@guess_count -= 1
		@guess_word = guess
		@secret_word
		if @guess_word == @secret_word
			@is_over = true
		else
			false
		end
	end


	def guess_word(guess)
		p wordssss = ""
		p array = wordssss.split("")
	end
end

try = CupGame.new("unkrich")

p try.check_letter(array)
p try.check_letter(array)