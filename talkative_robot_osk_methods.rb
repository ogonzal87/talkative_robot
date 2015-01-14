#Talktive Robot

# - Ask user for gender (M or F) 

print "What's your gender? (M/F): "
gender = gets.chomp

# - Print a message based off age X
print "How old are you?: "
age = gets.chomp.to_i
puts "Your are #{age} years old"

# # # - Using in-line if X
# puts "Welcome to WDI! Could I see your ID, please?"
# puts "Unfortunately, we don't let people in who are less than 21" if age < 	21 
# puts "Please, come in!" 										  if age >= 21
# #**OR**
# Add a ternary operator somewhere
# puts age < 21 ? "Unfortunately, we don't let people in who are less than 21" : "Please, come in!"

# # - Using in-line unless X
# puts "Wait! how old is your friend?!"
# friend_age = gets.chomp.to_i
# puts "Unfortunately, we don't let people in who are less than 21" unless friend_age >= 21
# puts "Welcome!" unless friend_age < 21 

# - if/else 
# if age < 21 
# 	puts "Unfortunately, we don't let people in who are less than 21"
# elsif age >= 21 
# 	puts "Welcome!"
# end

# # - Case (if < 75 “You’ll be 75 in x years”, == 75 (you’re 75!), > 75 “You turned 75 y years ago”) X
# case age 
# when 75..75
# 	puts "You're 75!"
# when 0..75
# 	age_delta_minus = (75 -  age)
# 	puts "You'll be 75 in #{age_delta_minus} years" 
# when 75..300
# 	age_delta_plus = (age - 75)
# 	puts "You turned 75 #{age_delta_plus} ago"
# else 
# 	puts "You're dead!"
# end

# - Display messages based on both age and gender
# 	- “You are a young boy/girl.”
# # - “Are you a great-great grandmother/father?” (make sure age is very high!)
# gender = "boy"  					if gender == "M" && age 		<= 10 
# gender = "girl" 					if gender == "F" && age 		<= 10
# gender = "Man"  					if gender == "M" && age.between?(11, 150) 
# gender = "Lady" 					if gender == "F" && age.between?(11, 150)
# gender = "great-great grandmother"	if gender == "F" && age 		> 150
# gender = "great-great grandfather"	if gender == "M" && age 		> 150 

# puts "you are a young #{gender}!" 	if age 					<= 10  && gender == "boy"
# puts "You are a young #{gender}!" 	if age 					<= 10  && gender == "girl"
# puts "You are an old #{gender}!" 	if age.between?(11, 150) 	   && gender == "Man"
# puts "You are an old #{gender}!" 	if age.between?(11, 150) 	   && gender == "Lady"	
# puts "Are you a #{gender}?"			if age 			 		>= 151 && gender == "great-great grandmother"
# puts "Are you a #{gender}?"			if age 					>= 151 && gender == "great-great grandfather"	


# Group previously defined if/else and case statements into methods

# - if/else 
def entrance_denial?(age)
 age <= 10
end

def entrance_acceptance?(age)
 age > 10
end

puts "Unfortunately, we don't let people in who are less than 21" if entrance_denial?(age) 
puts "Welcome!" if entrance_acceptance?(age)




 # - Case (if < 75 “You’ll be 75 in x years”, == 75 (you’re 75!), > 75 “You turned 75 y years ago”) X
# case age 
# when 75..75
# 	puts "You're 75!"
# when 0..75
# 	age_delta_minus = (75 -  age)
# 	puts "You'll be 75 in #{age_delta_minus} years" 
# when 75..300
# 	age_delta_plus = (age - 75)
# 	puts "You turned 75 #{age_delta_plus} ago"
# else 
# 	puts "You're dead!"
#end
def younger_than_75?(age)
  age.between?(0, 75)
end

def older_than_75?(age)
  age.between?(75, 300)
end
  
def same_as_75?(age)
	if age == 75
  end  
end

puts "You are younger than 75!" if younger_than_75?(age)
puts "You are older than 75!"   if older_than_75?(age)
puts "you are 75!"              if same_as_75?(age)



# ###Bonus
# Create a script of your thought process for your commute home. Add logic until you can accurately describe it.

# **Example:** When I am in traffic, I am angry. When I am angry and hungry, I am hangry.

# - puts “How bad is traffic? (good/bad)”
# - traffic = gets.chomp
# - puts “Are you hungry? (yes/no)”
# - hungry = gets.chomp
# - if traffic == “bad” && hungry == “yes”
# - puts “HANGRY!!!”
# …

# ###Bonus
# Create a text-based RPG where you fight a dragon, both of you have health points, attack points, you can run away.

# ###Extra bonus: 

# You can taunt the dragon and he’ll either lose or gain health
