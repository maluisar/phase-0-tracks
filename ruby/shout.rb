
# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end

# end

module Shout

  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
    puts words + "!!!" + " :D"
  end

end

class Baby
  include Shout
end

class Referee
  include Shout
end

#Driver Code

baby = Baby.new
referee = Referee.new

baby.yell_angrily("badabaubu")
referee.yell_angrily("Stop")
