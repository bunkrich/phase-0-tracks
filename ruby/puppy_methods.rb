#Puppy Class
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do |talk|
      talk = "woof"
      puts talk
    end
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(h_years)
    d_years = 7 * h_years
    puts d_years
  end

  def commands(action)
    puts "The dog will #{action}"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end


end

#Kitty Class
class Kitty

	def initialize
		puts "Welcome the new kitten to the family"
	end

	def sleep(hours)
		puts "the kitten slept for #{hours} hours"
	end

	def purr(type_of_purr)
		puts "the kitten is purring #{type_of_purr}"
	end
end


#Driver code for the Puppy class
labrador = Puppy.new

p labrador.fetch("ball")

p labrador.speak(5)

p labrador.roll_over

p labrador.dog_years(3)

p labrador.commands("sit")

#Driver code for the Kitty class
fluffy = Kitty.new

p fluffy.sleep(4)

p fluffy.purr("softly")

#Array to hold all the cats
Cat_family = []

#filling the array with 50 new cats 
50.times do 
	kitty = Kitty.new
	Cat_family << kitty 
end
p Cat_family

#having each of the cats sleep and purr
Cat_family.each do |cat| 
	cat.sleep(2)
	cat.purr("normal")
end
