#starting an empty hash called "Application" to hold all user's data
Application = {
}

puts "We are so excited to be working with you, before we get started, please fill out the questions below."
puts ""

#beginning of questions for user
puts "What is your name?"
Application[:name] = gets.chomp

#data output will be an integer to be easier to work with later
puts "What is your age?"
Application[:age] = gets.chomp.to_i

#asks user if they have kids, only accepting a "y" or "n"
#if they have kids then it will ask them how many
#if they don't have kids the it will skip to next question
#final info if they do have kids will be an integer
puts "Do you have children? (y/n)"
  has_kids = gets.chomp
  until has_kids == "y" || has_kids == "n"
    puts "please enter a 'y' or 'n'."
    has_kids = gets.chomp
  end
  if has_kids == "y"
    Application[:has_children] = TRUE
    puts "How many children do you have?"
    Application[:children_count] = gets.chomp.to_i
  else Application[:has_children] = FALSE
  end

puts "What is your decor theme?"
Application[:decor_theme] = gets.chomp

puts "What is your favorite color?"
Application[:color] = gets.chomp

#data output will be an integer to be easier to work with later
puts "What is your budget?"
Application[:budget] = gets.chomp.to_i

#"y" or "n" question asking the user if they are fancy
#loops until they give a "y" or "n"
#data output will be a boolean
puts "Do you consider yourself fancy? (y/n)"
fancy_input = gets.chomp
  until fancy_input == "y" || fancy_input == "n"
    puts "please enter a 'y' or 'n'."
    fancy_input = gets.chomp
  end
   if fancy_input == "y"
    Application[:fancy] = TRUE
  else Application[:fancy] = FALSE
  end


#end of user questions
puts ""

#prints hash for user to review
puts ""
puts "Your current application is:"
puts Application
puts ""

#ask user if they would like to change anything
#if they input "none" then the program will print final hash
puts "Would you like to make any changes, if no please enter 'none'"
puts "Which would you like to change"
#key_to_change is the key they are able to type in in order to change it using to_sym.
key_to_change = gets.chomp
  if key_to_change == "none"
    puts "Thank You!"
  else
    #get user's input to change
    puts "What would you like to change this to?"
    Application[key_to_change.to_sym] = gets.chomp
  end

#prints out final info for user
puts ""
puts "Your final application is:"
puts Application
puts ""
puts "Thank you! We'll contact you shortly."
puts "Have a great day."