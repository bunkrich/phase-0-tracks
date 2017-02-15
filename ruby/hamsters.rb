puts "What is the name of the hamster?"
hamster_name = gets.chomp
puts "Welcome to the sanctuary #{hamster_name}"
puts "How loud is the hamster?(On a scale of 1-10)"
hamster_loud = gets.chomp.to_i

	until hamster_loud >= 1 && hamster_loud <= 10
		puts "Please choose a number between 1 and 10."
		hamster_loud = gets.chomp.to_i
	end
puts "We have registered noise level at #{hamster_loud}."

puts "What is the fur color?"
hamster_color = gets.chomp
hamster_color_check = hamster_color.to_i
until hamster_color_check == 0
	puts "Please type a color"
	hamster_color = gets.chomp
	hamster_color_check = hamster_color.to_i
end
puts "#{hamster_name} is the color #{hamster_color}."

puts "Is the hamster in good condition for adoption? (Y/N)"
hamster_condition = gets.chomp

	
until hamster_condition == "Y" || hamster_condition == "N"
		puts "Please input Y or N"
		hamster_condition = gets.chomp
end

if hamster_condition == "Y"
	puts "#{hamster_name} is available for adoption."
else 
	puts "#{hamster_name} is not available for adoption."
end

puts "How old is the hamster in months?"

hamster_age = gets.chomp
if hamster_age == ""
	hamster_age = nil
	puts "#{hamster_name}'s age is unknown"
else
	hamster_age = hamster_age.to_i
		until hamster_age != 0
			puts "Please enter a number."
			hamster_age = gets.chomp.to_i
		end
	puts "#{hamster_name} is approximatedly #{hamster_age} months old."
		
end

puts "Thank you for putting in the new hamster"
puts "name = #{hamster_name}"
if hamster_age == nil
	puts "age = unknown"
else
	puts "age = approximatedly #{hamster_age} months old."	
end
puts "color = #{hamster_color}"
puts "volume level = #{hamster_loud}"
if hamster_condition == "Y"
	puts "Status = available for adoption."
else 
	puts "Status = not available for adoption."
end