class Person

  attr_accessor :name, :gender, :age

  def initialize(args)
    @name   = args[:name]
    @gender = args[:gender]
    @age    = args[:age]
  end 

  def get_name
    print "What is your name?: "
    name = gets.chomp
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

  def entrance_message_to_friend
    puts "I see you brought a friend! How old is your friend?"
    friend_age = gets.chomp.to_i
    friend_age < 21 ? "Unfortunately, we don't let people in who are younger than 21." : "Welcome to you and yours friend!!"  
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
