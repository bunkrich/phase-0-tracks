# module Shout
# 	# we'll put some methods here soon, but this code is fine for now!
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "<3 >3" + " :) yaassss"
# 	end
# end

module Shout
	# we'll put some methods here soon, but this code is fine for now!
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + " <3 >3" + " :) yaassss"
	end
end

class Fight
	include Shout
end

class PartyTime
	include Shout
end


# -----DRIVER CODE----- #
fight = Fight.new
puts fight.yell_angrily("Not today Paul")

fight = Fight.new
puts fight.yelling_happily("YOU GOING DOWN")

partytime = PartyTime.new
puts partytime.yelling_happily("OMG let's rage")

partytime = PartyTime.new
puts partytime.yell_angrily("Last Call")