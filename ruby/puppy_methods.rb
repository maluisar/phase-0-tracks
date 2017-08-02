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
    if selector == 1
      puts "Puppy is sleeping/resting"
    elsif selector == 2
      puts "Puppy is playing"
    else
      puts "Puppy is eating"
    end
  end
end

class Puppy
  def initialize
    puts "Initialize new puppy instance..."
  end
end

scout = Puppy.new

scout.fetch("ball")
scout.speak(4)
scout.roll_over
scout.dog_activity

class School
  def initialize
    puts "Inititating School"
  end
end

class School
  def attendance
    puts "Student attended class"
  end
end

class School
  def teacher_advice(grade)
    if grade == "A" || grade =="A+" || grade=="B+"
      puts "Keep doing what you are doing"
    elsif grade == "B" || grade == "C+" || grade == "C"
      puts "You have to put a little more effort"
    else
      puts "You have to put a lot more effort and come to office hours"
    end
  end
end

student_count = 1
instances_list = []

until student_count == 51
  instance = School.new
  instances_list << instance
  student_count +=1
end

instances_list.each do |instance|
  instance.attendance
end

instances_list.each do |instance|
  instance.teacher_advice("A+")
end
