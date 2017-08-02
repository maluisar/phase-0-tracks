class Puppy
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
end

class Puppy
  def speak(i)
    puts "Woof! "*i.to_i
  end
end

class Puppy
  def roll_over
    puts "Rolling over!"
  end
end

class Puppy
  def dog_years (i)
    puts i*7
  end
end

class Puppy
  def dog_activity
    selector = 1 + rand(3)
    p selector
    if selector == 1
      puts "Puppy is sleeping/resting"
    elsif selector == 2
      puts "Puppy is playing"
    else
      puts "Puppy is eating"
    end
  end
end

scout = Puppy.new

scout.fetch("ball")
scout.speak(4)
scout.roll_over
scout.dog_activity
