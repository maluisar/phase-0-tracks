# Virus Predictor
# I worked on this challenge [by myself, with: Libby].
# We spent [1.5] hours on this challenge.
# EXPLANATION OF require_relative
# require_relative allows us to load a file in to a different file
# require_relative will look for files in the same directory (relative to its position in the directory)
  # the require path is most often used to require gems in a ruby file and if you're not looking to require a gem, you should note the absolute file path

require_relative 'state_data'
class VirusPredictor

# initialize new instance of the VirusPredicor and gives values to state, population density, and state population for the instance
  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[@state][:population]
    @population_density = STATE_DATA[@state][:population_density]
  end

# uses outputs from predicted deaths and speed of spread methods
  def virus_effects
    puts "#{@state} - Predicted deaths: #{predicted_deaths} Speed of Spread: #{speed_of_spread}"
  end

# doesn't allow to access from outside the class
private

# method to predict deaths based on population density, population and state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    number_of_deaths
  end

# method to predict how quickly (number of months) the virus will spread across the given state based on population density
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    speed
  end

end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama",# STATE_DATA["Alabama"][:population_density], # STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", # STATE_DATA["New Jersey"][:population_density# ], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", # STATE_DATA["California"][:population_density# ], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", # STATE_DATA["Alaska"][:population_density], # STATE_DATA["Alaska"][:population])
# alaska.virus_effects
# STATE_DATA = "strawberries"
STATE_DATA.each do |state, population_information|
  state = VirusPredictor.new(state)
  puts state.virus_effects
end
#=======================================================================
# Reflection Section