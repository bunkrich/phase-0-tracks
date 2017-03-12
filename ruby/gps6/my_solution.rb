# Virus Predictor
# => paired with bredjenn


# I worked on this challenge [by myself, with: Gabz Bredjenn].
# We spent [2-3] hours on this challenge.
# EXPLANATION OF require_relative
# => require_relative is looking for a file with a specific name within the current directory.
# => whereas require is looking for files from an outside source

require_relative 'state_data'
class VirusPredictor
# the initialize is asking for three variables, and makes them readable to the rest of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# the virus_effects method is calling other methods for the class
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private
# this method is projecting the death base on population density and state, and it will generate the number of death from the if statement
  def predicted_deaths
    # predicted deaths is solely based on population density
  @number_of_deaths = if @population_density >= 200
                        (@population * 0.4).floor
                      elsif @population_density >= 150
                        (@population * 0.3).floor
                      elsif @population_density >= 100
                        (@population * 0.2).floor
                      elsif @population_density >= 50
                        (@population * 0.1).floor
                      else
                        (@population * 0.05).floor
                      end
                      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
                    end
# this method is accessing the population density and iterate to the if statement to gives you the speed of spread and print the actual information for the user
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
     @speed = if @population_density >= 200
                0.5
              elsif @population_density >= 150
                1
              elsif @population_density >= 100
                1.5
              elsif @population_density >= 50
                2
              else
                2.5
              end
         puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
STATE_DATA.each do |state, stats|
  p state
  p stats
end
#=======================================================================
# Reflection Section (on our own)

# What are the differences between the two different hash syntaxes shown in the state_data file?
# => They are nested, so the state is the key that holds 2 sets of data, each with their own key.

# What does require_relative do? How is it different from require?
# => relative means it's within the directory, require can ask for it from anywhere.

# What are some ways to iterate through a hash?
# => You can loop, or do a .each.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => having good variables can make reading the code much easier.

# What concept did you most solidify in this challenge?
# => I think overall data structures make more sense now.