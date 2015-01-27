class GroceryList

  attr_accessor :grocery_list

  def initialize(file_name)
    @grocery_list = import_list(file_name) 
  end

  def list_with_index
    @grocery_list.each_with_index { |item, index| puts "#{index + 1} -- #{item.capitalize}" }
  end  

  def to_s
    @grocery_list.each_with_index.map { |item, index|  puts "#{index + 1} -- #{item}" }.join("\n")
  end

  def import_list(file_name)
    IO.read(file_name).split("\n")
  end

  def random_item_deleted(file_name)
    random = @grocery_list.sample
    @grocery_list.delete(random)
    return @grocery_list
  end
end
