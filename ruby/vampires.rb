=begin wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

p wolves_like_garlic && wolves_like_sunshine
p wolves_like_garlic || vampires_like_garlic
p wolves_like_garlic && vampires_like_garlic
p wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
p (wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
p vampires_like_garlic
p !vampires_like_garlic
p !(wolves_like_sunshine && wolves_like_garlic) 
=end

puts "What is your name?"
	employee_name = gets.chomp


puts "How old are you?"
	employee_age = gets.chomp.to_i
	employee_year_test = 2017-employee_age
	employee_year_test2 = employee_year_test - 1 #they could also be born in the year before if their birthday hasnt' happend yet


puts "What year were you born?"
	employee_year = gets.chomp.to_i
if employee_year == employee_year_test || employee_year == employee_year_test2
	test_age = true
else test_age = false
end
	p test_age


puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp
until garlic_bread == "y" || garlic_bread == "n"
	puts "please use a 'y' or 'n'."
	garlic_bread = gets.chomp
end	
if garlic_bread == "y"
	likes_garlic = true
else likes_garlic = false
end
	p likes_garlic


puts "Would you like to enroll in the company’s health insurance? (y/n)"
		insruance = gets.chomp
until insruance == "y" || insruance == "n"
	puts "please use a 'y' or 'n'."
	insruance = gets.chomp
end	
if insruance == "y"
	likes_insurnace = true
else likes_insurnace = false
end
	p likes_insurnace

if employee_name == "Drake Cula" || employee_name == "Tu Fang"
	puts "Definitely a Vampire"
elsif !test_age && !likes_garlic && !likes_insurnace
	puts "Almost certainly a vampire."
elsif !test_age && (!likes_garlic || !likes_insurnace)
	puts "Probably a vampire."
elsif test_age && (likes_garlic || likes_insurnace)
	puts "Probably not a vampire."
else puts "Results inclusive"
end
