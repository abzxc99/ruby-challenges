def calculate_sum(numeric_arr)
j=0
  numeric_arr.each do |i|
    j += i.to_i
  end
while j > 9
  j = calculate_sum(j.to_s.split(//))
end 
  return j 
end

def display_message(birth_path)
  case birth_path
  when 1
    message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

  when 2
    message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."

  when 3
    message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."

  when 4
    message = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."

  when 5
    message = "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."

  when 6
    message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."

  when 7
    message =  "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."

  when 8
    message = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

  when 9
    message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."

  else
      message = "Your numerology number is #{birth_path}.  \n"
  end
  return message
end

puts "Please enter your birth date in this format: MMDDYYYY"
birthdate = gets.chomp.split(//)
number=calculate_sum(birthdate) 
message_to_display = display_message(number);
puts "Your numerology number is #{number}.  \n#{message_to_display}" 





