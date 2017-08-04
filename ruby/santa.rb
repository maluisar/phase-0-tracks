class Santa

attr_reader :age, :ethnicity, :raindeer_ranking
attr_accessor :gender

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    print "That was a good #{cookie}!"
  end

  def initialize
    puts "Initializing Santa instance ..."
    @gender_array = ["Female","Male","Bi-gender","Gender Fluid","Unknown"]
    @ethnicity_array = ["Hispanic-Latino", "White-European", "Native American", "Asian", "Black-African American", "Other"]
    @gender = @gender_array[rand(@gender_array.length-1)]
    @ethnicity = @ethnicity_array[rand(@ethnicity_array.length-1)]
    @raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"].shuffle
    @age = rand(140)
  end

  def celebrate_birthday
    @age += 1
    p @age
  end

  def get_mad_at_reindeer (name)
    @raindeer_ranking.delete(name)
    @raindeer_ranking << name
  end

  # def gender
  #     @gender
  # end

  # def age
  #     @age
  # end

  # def ethnicity
  #     @ethnicity
  # end

  # def gender=(gender_input)
  #   @gender = gender_input
  # end

end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# santas << Santa.new("female","Mexican")
# santas << Santa.new("prefer not to say","Cuban")

santas = []

1000.times do
  santas <<santa = Santa.new
end

#Driver Code

p santas[0].gender
p santas[0].age
p santas[0].ethnicity
p santas[0].raindeer_ranking

