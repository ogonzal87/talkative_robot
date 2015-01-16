#Talktive Robot Program
def greeting
	puts "Welcome to WDI!" 
end

def get_user_name
	print "What is your name?: "
	gets.chomp
end

def get_user_gender
	print "What is your gender? (F/M): "
	gets.chomp.capitalize
end

def get_user_age
	print "How old are you?: "
	gets.chomp.to_i
end

def entrance_message(user_info)
 	puts "You say you are #{user_info[:age]} yeard old, but I do not believe you... Could I see your ID, please?"
  	puts user_info[:age] < 21 ? "Unfortunately, we don't let people in who are younger than 21" : "Please, come in!"
end

def get_friend_age
 	puts "I see you brought a friend! How old is your friend?"
 	gets.chomp.to_i
end

def entrance_message_to_friend(friend_age)
   puts "Welcome to you and yours friend!!" unless friend_age < 21
   while friend_age < 21
     puts "Unfortunately, we don't let people in who are less than 21."
   break
   end
end

def age_based_message(user_info)
	print "I bet you didnt know..." 	
	case user_info[:age]
 	when 75..75
 		puts "you're 75!"
 	when 0..75
 		age_delta_minus = (75 -  user_info[:age])
 		puts "you'll be 75 in #{age_delta_minus} years" 
  	when 75..300
 		age_delta_plus = (user_info[:age] - 75)
 		puts "you turned 75 #{age_delta_plus} ago"
 	else 
 		puts "you're dead!"
 	end
end

## TODO this weekend!!! ==> gets this to be smaller by tying the stuff below:
 # ## def male?(user_info)
# 		user_info[:gender] == "M" || user_info[:gender] == "male"
# # 	end

def talkative_robot_flirting_with_user(user_info)

 	print "Also, for your looks... "

 	user_info[:gender] = "boy"  					if user_info[:gender] == "M" && user_info[:age] 		<= 10 
 	user_info[:gender] = "girl" 					if user_info[:gender] == "F" && user_info[:age] 		<= 10
 	user_info[:gender] = "Man"  					if user_info[:gender] == "M" && user_info[:age].between?(11, 150) 
 	user_info[:gender] = "Lady" 					if user_info[:gender] == "F" && user_info[:age].between?(11, 150)
 	user_info[:gender] = "great-great grandmother"	if user_info[:gender] == "F" && user_info[:age] 		> 150
 	user_info[:gender] = "great-great grandfather"	if user_info[:gender] == "M" && user_info[:age] 		> 150 


 	puts "you are a young #{user_info[:gender]}!" 	if user_info[:age] 					<= 10  && user_info[:gender] == "boy"
 	puts "you are a young #{user_info[:gender]}!" 	if user_info[:age] 					<= 10  && user_info[:gender] == "girl"
 	puts "you are an old #{user_info[:gender]}!" 	if user_info[:age].between?(11, 150) 	   && user_info[:gender] == "Man"
 	puts "you are an old #{user_info[:gender]}!" 	if user_info[:age].between?(11, 150) 	   && user_info[:gender] == "Lady"	

## ** TRY the follwing below for grandparents this weekend:	
	# # def parent_greeting(user_info)
	# # 	male? ? "father" : "mother"
	# # end
	# # # def parent_greeting(user_info)
	# # # 	male? ? "father" : "mother"
	# # # end
	# # puts " are you are a grand#{prent_greeting(user_info)}?" if user[:age] > 60
 	# # puts "Are you are a grand#{parent_greeting(user_info)}?" if user[:age] > 60
 	puts "Are you a #{user_info[:gender]}?"			if user_info[:age] 			 		>= 151 && user_info[:gender] == "great-great grandmother"
 	puts "Are you a #{user_info[:gender]}?"			if user_info[:age] 					>= 151 && user_info[:gender] == "great-great grandfather"	
 end

grocery_list = ["rice", "apple", "banana", "orange", "bread"]

def add_new_item(grocery_list)
 	new_item = "ice cream"
 	grocery_list << new_item
 	puts "Oh yeah! don't forget the #{new_item}"
 	return grocery_list
end

#Commands

greeting

name 	= get_user_name
gender 	= get_user_gender
age 	= get_user_age
user_info = { name: name, gender: gender, age: age }

entrance_message(user_info) 

friend_age = get_friend_age

entrance_message_to_friend(friend_age)

age_based_message(user_info)

talkative_robot_flirting_with_user(user_info)

random_item = grocery_list.sample
puts "Did you already grab the #{random_item}? (Y/N)"
got_item = gets.chomp

puts got_item == "Y" ? grocery_list.delete(random_item) : 'You have to get it!'

new_grocery_list = add_new_item(grocery_list)

grocery_list.each_with_index do |item, index| 
	puts "#{index + 1} -- #{item.capitalize}"
end

author = { name:"Oscar", nationality: "Colombian", weight: "156" }
people = [ user_info, author ]
puts people.select { |person| person == author }

grocery_list = IO.read("grocery_list.txt").split("/n")

new_grocery_list = grocery_list.join("/n")

IO.write("new_grocery_list.txt", new_grocery_list)