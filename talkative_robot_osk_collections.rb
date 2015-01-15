#Talktive Robot

def get_name
	print "What is your name?: "
	gets.chomp
end

def get_gender
	print "What is your gender? (F/M): "
	gets.chomp
end

def get_age
	print "How old are you?: "
	gets.chomp.to_i
end

def get_friend_age
	gets.chomp.to_i
end


def entrance_message(age)
 	puts age < 21 ? "Unfortunately, we don't let people in who are less than 21" : "Please, come in!"
end

def entrance_message_to_friend(friend_age)
	puts "Unfortunately, we don't let people in who are less than 21" unless friend_age >= 21
	puts "Welcome!" unless friend_age < 21
end

def message_to_old_people(age)
	case age 
		when 75..75
			puts "you're 75!"
		when 0..75
			age_delta_minus = (75 -  age)
			puts "you'll be 75 in #{age_delta_minus} years" 
		when 75..300
			age_delta_plus = (age - 75)
			puts "you turned 75 #{age_delta_plus} ago"
		else 
			puts "you're dead!"
	end

end


def talkative_robot_flirting(age, gender)

	print "Also, for your looks... "

	gender = "boy"  					if gender == "M" && age 		<= 10 
	gender = "girl" 					if gender == "F" && age 		<= 10
	gender = "Man"  					if gender == "M" && age.between?(11, 150) 
	gender = "Lady" 					if gender == "F" && age.between?(11, 150)
	gender = "great-great grandmother"	if gender == "F" && age 		> 150
	gender = "great-great grandfather"	if gender == "M" && age 		> 150 


	puts "you are a young #{gender}!" 	if age 					<= 10  && gender == "boy"
	puts "you are a young #{gender}!" 	if age 					<= 10  && gender == "girl"
	puts "you are an old #{gender}!" 	if age.between?(11, 150) 	   && gender == "Man"
	puts "you are an old #{gender}!" 	if age.between?(11, 150) 	   && gender == "Lady"	
	puts "Are you a #{gender}?"			if age 			 		>= 151 && gender == "great-great grandmother"
	puts "Are you a #{gender}?"			if age 					>= 151 && gender == "great-great grandfather"	

end


puts "Welcome to WDI!" 

name = get_name
gender = get_gender
age = get_age

puts "You are #{age} yeard old, but I do not believe you..." 

puts "Could I see your ID, please?"

puts entrance_message(age) 

puts "Wait! how old is your friend?!"
friend_age = get_friend_age

puts entrance_message_to_friend(friend_age)

print "I bet you didnt know "
puts message_to_old_people(age)

puts talkative_robot_flirting(age, gender)

grocery_list = ["rice", "apple", "banana", "orange", "bread"]

def add_new_item(grocery_list)
	new_item = "ice cream"
	grocery_list << new_item
	puts "Oh yeah! don't forget the #{new_item}"
end

	user_info 			= {}
	user_info[:name] 	= name
	user_info[:gender] 	= gender
	user_info[:age] 	= age

random_item = grocery_list.sample

puts "Did you already grab the #{random_item}? (Y/N)"
got_item = gets.chomp

puts got_item == "Y" ? grocery_list.delete(random_item) : 'You have to get it!'

add_new_item(grocery_list)





 