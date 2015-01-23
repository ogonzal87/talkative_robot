require './person'
require './user'
require './grocery_list'
require './author'

class Person
  def initialize(args)
    @name                 = args[:name]   
    @gender               = args[:gender] 
    @age                  = args[:age]    
  end

  def self.get_name
    print "What is your name?: "
    gets.chomp.capitalize
  end

  def self.get_gender
    print "What is your gender? (F/M): "
    gets.chomp.capitalize
  end

  def self.get_age
    print "How old are you?: "
    gets.chomp.to_i
  end

  def male?
    gender == "M"
  end

  def old?
    age >= 65
  end

  def young?
    age <= 12
  end 

end

#____________________________________________________

class User < Person

  attr_accessor :name, :gender, :age

  def initialize(args)
    super(args)
  end

  def entrance_message(user)
    age < 21 ? "Unfortunately, we don't let people in who are younger than 21" : "Please, come in!"
  end

  def entrance_message_to_friend(user)
    puts "I see you brought a friend! How old is your friend?"
    friend_age = gets.chomp.to_i
    friend_age < 21 ? "Unfortunately, we don't let people in who are younger than 21." : "Welcome to you and yours friend!!"  
  end

  def age_based_message(user)  
    case age
    when age == 75
      "you're 75!"
    when 0..74
      "you'll be 75 in #{75 - age} years" 
    else
      "you turned 75 #{age - 75} ago"
    end
  end

  def young_vs_old(user)
    return "you're a young boy"  if young? && gender == "M" 
    return "you're a young girl" if young? && gender == "F" 
    return "are you a grandpa?"  if old?   && gender == "M" 
    return "are you a grandma?"  if old?   && gender == "F" 
  end

end

#_______________________________________________________________


class GroceryList

  attr_accessor :user, :grocery_list

  def initialize(file_name, user)
    @grocery_list = import_list(file_name)
    @user         = user    
  end

  def list_with_index
    @grocery_list.each_with_index do |item, index| 
    puts "#{index + 1} -- #{item.capitalize}"
    end
  end  

  def to_s
        grocery_list.map.with_index do |item, index|
      "#{index + 1} -- #{item}"
    end.join("\n")
  end

  def import_list(file_name)
    IO.read(file_name).split("\n")
  end
end

#_______________________________________________________________

class Author < Person
  def initialize(args)
    super(args)
    @name   = "OG"
    @age    = 28
    @gender = "M"
  end
end

name                = User.get_name
gender              = User.get_gender
age                 = User.get_age
user                = User.new(name: name, age: age, gender: gender)
puts user.entrance_message(user) 
puts user.entrance_message_to_friend(user)
puts user.age_based_message(user)
user.young_vs_old(user)

grocery_list = GroceryList.new("grocery_list.txt", user)
puts grocery_list
puts grocery_list.user.name