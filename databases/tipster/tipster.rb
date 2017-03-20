require 'sqlite3'

@db = SQLite3::Database.new("tip_log.db")
@db.results_as_hash = true
@line = "-------------------------------"
#create a table if there isn't one yet
create_table = <<-SQL
	CREATE TABLE IF NOT EXISTS tip_log(
	id INTEGER PRIMARY KEY,
	server_name VARCHAR(255),
	day INT,
	month INT,
	year INT,
	hours_worked INT,
	sales INT,
	total_tips INT,
	tip_out INT,
	take_home INT,
	hourly_rate INT
	)
SQL
@db.execute(create_table)



#main user menu with 4 options for the user
def main_menu
	puts @line
	puts "MAIN MENU: Please insert your choice (1-4)"
	puts "1: Input a new server log."
	puts "2: View all server inputs."
	puts "3: Create a monthly report."
	puts "4: Exit."
	menu_input = gets.chomp.to_i
	until menu_input <= 4 && menu_input >= 1
		puts "Please type a number between 1 and 4"
		menu_input = gets.chomp.to_i
	end
	if menu_input == 1
		user_input
	elsif menu_input == 2
		server_report(@db)
	elsif menu_input == 3
		monthly_report(@db)
	else
		puts "Goodbye :)"
	end
end


#adds a new log from a server
def new_log(db, server_name, day, month, year, hours_worked, sales, total_tips, tip_out)
 	take_home = total_tips - tip_out
	hourly_rate = take_home / hours_worked
	@db.execute("INSERT INTO tip_log (server_name, day, month, year, hours_worked, sales, total_tips, tip_out, take_home, hourly_rate) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", [server_name, day, month, year, hours_worked, sales, total_tips, tip_out, take_home, hourly_rate])
	puts @line
	puts "Your data was successfully added to the database."
	main_menu
end


#create a report for all user input
def server_report(db)
	report = @db.execute("SELECT * FROM tip_log;")
	puts "All server records:"
	report.each do |i|
		puts @line
		puts "SERVER: #{i['server_name']}"
		puts "#{i['month']}/#{i['day']}/#{i['year']}: Sales: $#{i['sales']}"
		puts "Total Tips: $#{i['total_tips']}  |  Tip Out: $#{i['tip_out']}  |  Take Home: $#{i['take_home']}"
		puts "Hours Worked: #{i['hours_worked']}  |  Hourly Rate: $#{i['hourly_rate']}"
	end
	main_menu #sends user back to main menu
end


#creates a report for a given month about the sales and tips
def monthly_report(db)
	puts "What month would you like a report for? (1-12)"
	monthly_input = gets.chomp.to_i
	until monthly_input <= 12 && monthly_input >= 1
		puts "Please insert a number between 1 and 12."
		monthly_input = gets.chomp.to_i
	end 
	monthly_report_loop(@db, monthly_input)
	puts @line
	puts "MONTLY REPORT:"
	puts "Monthly Sales: $#{@sales_z}"
	puts "Monthly Total Tips: $#{@total_tips_z}"
	puts "Monthly Total Hours Worked: #{@hours_worked_z}"
	main_menu #sends user back to main menu
end
	

#the loop needed for the method above to iterate through the data	
def monthly_report_loop(db, month)
	report = @db.execute("SELECT * FROM tip_log WHERE month = '#{month}';")
		@sales_z = 0
		@total_tips_z = 0
		@hours_worked_z = 0
	report.each do |i|
		sales_x = "#{i['sales']}".to_i
		@sales_z = @sales_z + sales_x
		total_tips_x = "#{i['total_tips']}".to_i
		@total_tips_z = @total_tips_z + total_tips_x
		hours_worked_x = "#{i['hours_worked']}".to_f
		@hours_worked_z = @hours_worked_z + hours_worked_x
	end
end


#user inputs for new shift information
def user_input #UX
	#response for user to try again
	sorry = "Please enter a more reasonable response."
	puts @line

	puts "What is the server's name?"
	server_name = gets.chomp.downcase
	
	puts "What is the date for the new entry?"
	
	puts "Day (1-31)?"
	day = gets.chomp.to_i
	until day <= 31 && day >= 1
		puts "Please insert a number between 1 and 31."
		day = gets.chomp.to_i
	end

	puts "Month (1-12)?"
	month = gets.chomp.to_i
	until month <= 12 && month >= 1
		puts "Please insert a number between 1 and 12."
		month = gets.chomp.to_i
	end 
	
	puts "Year (20**)?"
	year = gets.chomp.to_i
	until year <= 2200 && year >= 2000
		puts "Please insert a 4 digit number (i.e. 2017)"
		year = gets.chomp.to_i
	end 

	puts "How long was your shift in hours?"
	hours_worked = gets.chomp.to_f
	until hours_worked <= 24 && hours_worked >= 0
		puts sorry
		hours_worked = gets.chomp.to_f
	end 

	puts "What were your total sales for the shift?"
	sales = gets.chomp.to_f
	until sales >= 0
		puts sorry
		sales = gets.chomp.to_f
	end 

	puts "What were your total tips before tip out?"
	total_tips = gets.chomp.to_f
	until total_tips >= 0
		puts sorry
		total_tips = gets.chomp.to_f
	end

	puts "How much did you tip out?"
	tip_out = gets.chomp.to_f
	until tip_out >= 0 && tip_out <= total_tips
		puts sorry
		tip_out = gets.chomp.to_f
	end

#call on the new_log method to add all of the info to the database once all the info is added
new_log(@db, server_name, day, month, year, hours_worked, sales, total_tips, tip_out)
end



#-----MAIN PROGRAM-----#
puts "Welcome to the Tipster, tip tracker program"
new_ex = main_menu #sends user to main menu

