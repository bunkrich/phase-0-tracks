#Release 0
class Santa
	
	def initialize
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!" 
	end

end

#-----DRIVER CODE-----#
bob = Santa.new
p bob.speak
p bob.eat_milk_and_cookies("fatty")
# p Santa.eat_milk_and_cookies("snickky")