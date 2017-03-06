class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize #(gender, ethnicity) NO NEED to have these since they are down assigned below
		puts "Initializing Santa instance ..."
		@example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		@example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
		@gender = @example_genders.sample
		@ethnicity = @example_ethnicities.sample
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		random_age = Random.new
		@age = random_age.rand(140)
	end

	def speak
		"Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		"That was a good #{cookie_type}!" 
	end

	def celebrate_birthday
		@age += 1
	end

	#Moves the bad reindeer from the array and then adds it to the end
	def get_mad_at(bad_reindeer)
		@reindeer_ranking.delete(bad_reindeer)
		@reindeer_ranking << bad_reindeer
	end

end



# -----DRIVER CODE: RELEASE 4----- #
count = 1
# until loop that counts up to 101 and each time it makes a new santa then prints out it's info
until count == 101
		new_santa = Santa.new
		puts "Santa ##{count}:"
		puts "  Gender: #{new_santa.gender}"
		puts "  Ethnicity: #{new_santa.ethnicity}"
		puts "  Age: #{new_santa.age}"
		count = count += 1
	end






# -----DRIVER CODE----- #
# bob = Santa.new("boy", "mixed")
# p bob.speak
# p bob.eat_milk_and_cookies("fatty")
# # p Santa.eat_milk_and_cookies("snickky")
# bob.testing

# -----DRIVER CODE: RELEASE 1----- #
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas

# -----DRIVER CODE: RELEASE 1. part 2----- #
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas

# -----DRIVER CODE: RELEASE 2 & 3----- #
# bob = Santa.new("boy", "mixed")
# p bob.speak
# p bob.celebrate_birthday
# p bob.celebrate_birthday
# p bob.celebrate_birthday
# p bob.get_mad_at("Dasher")
# p bob.gender = ("girl")
# p bob.gender = ("woman")
# p bob.age
# p bob.ethnicity
