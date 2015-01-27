require_relative './lib/person'
require_relative './lib/user'
require_relative './lib/grocery_list'
require_relative './lib/author'

name                = User.get_name
gender              = User.get_gender
age                 = User.get_age
user                = User.new(name: name, age: age, gender: gender)
puts user.entrance_message(user)
puts user.entrance_message_to_friend(user)
puts user.age_based_message(user)
user.young_vs_old(user)

grocery_list = GroceryList.new("grocery_list.txt")
puts grocery_list