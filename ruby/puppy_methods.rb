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

labrador = Puppy.new

p labrador.fetch("ball")

p labrador.speak(5)

p labrador.roll_over

p labrador.dog_years(3)

p labrador.commands("sit")