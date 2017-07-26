#1. Ask for agent's name
#2. Store Agent's name in an array
#3. Swap last name with first name
#4. Create a letter equivalent
#4. Change the vowels and consonants of the name calling the letter equivalent hash
#5. Return name


puts "What is your full name, agent?"
agent_name_input = gets.chomp

agent_name = agent_name_input.split(' ')
agent_name.insert(0,agent_name.delete_at(1))

letter_equivalent = {
  a:"e",
  b:"c",
  c:"d",
  d:"e",
  e:"i",
  f:"g",
  g:"h",
  h:"j",
  i:"o",
  j:"k",
  k:"l",
  l:"m",
  m:"n",
  n:"p",
  o:"u",
  p:"q",
  q:"r",
  r:"s",
  s:"t",
  t:"v",
  u:"a",
  v:"w",
  w:"x",
  x:"y",
  y:"z",
  z:"b"
}

agent_last = agent_name[0].split(//)


p agent_last
