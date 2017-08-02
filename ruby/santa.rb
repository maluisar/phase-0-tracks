class Santa

attr_reader :age, :ethnicity
attr_accessor :gender

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    print "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @raindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
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

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
santas << Santa.new("female","Mexican")
santas << Santa.new("prefer not to say","Cuban")

#Driver Code


p santas[1].gender
santas[1].gender = "unknown"
p santas[1].gender
p santas[1].age

