#Interview survey

puts "How many employees will complete the survey?"
interviews = gets.chomp.to_i

interviews_count = 0

until interviews_count == interviews

  puts "What is your name?"
  user_name = gets.chomp

  puts "How old are you?"
  user_age_input = gets.chomp.to_i

  puts "What year were you born?"
  user_year_born = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you?(yes/no)"
  input_user_garlic = gets.chomp

  puts "Would you like to enroll in the company’s health insurance?(yes/no)"
  input_user_insurance = gets.chomp


  results = 0

  if input_user_garlic == "yes"
    likes_garlic = true
  end

  if input_user_insurance == "yes"
    wants_insurance = true
  end

  if  user_age_input == (2017-user_year_born)
    right_age = true
  end

  if user_name == "Drake Cula" || user_name == "Tu Fang"
    results = "Definitely a vampire"
  elsif right_age && (likes_garlic || wants_insurance)
    results = "Probably not a vampire"
  elsif !right_age && (!likes_garlic || !wants_insurance)
    results = "Probably a vampire"
  elsif !right_age && !likes_garlic && !likes_insurance
    results = "Almost certainly a vampire"
  else
    results = "Results inconclusive"
  end

  puts results

  interviews_count+=1

end