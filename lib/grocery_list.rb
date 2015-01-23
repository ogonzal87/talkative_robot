class GroceryList

  attr_accessor :user, :grocery_list

  def initialize(file_name, user)
    @grocery_list = import_list(file_name)
    @user        = user    
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
