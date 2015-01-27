class User < Person

  def initialize(args)
    super(args)
  end

  def entrance_message(age)
    @age < 21 ? "Unfortunately, we don't let people in who are younger than 21." : "Please, come in!"
  end 

  def entrance_message_to_friend(age)
    puts "I see you brought a friend! How old is your friend?"
    friend_age = gets.chomp.to_i
    friend_age < 21 ? "Unfortunately, we don't let people in who are younger than 21." : "Welcome to you and yours friend!!"  
  end

  def age_based_message(age)  
    case @age
    when @age == 75
      "you're 75!"
    when 0..74
      "you'll be 75 in #{75 - @age} years" 
    else
      "you turned 75 #{@age - 75} ago"
    end
  end

  def young_vs_old(age)
    return "you're a young boy"  if young? && @gender == "M" 
    return "you're a young girl" if young? && @gender == "F" 
    return "are you a grandpa?"  if old?   && @gender == "M" 
    return "are you a grandma?"  if old?   && @gender == "F" 
  end

end

