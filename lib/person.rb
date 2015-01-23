class Person
  def initialize(args)
    @gender = args[:gender]
    @age    = args[:age]
  end
  def male?
    @gender == "M"
  end

  def old?
    @age >= 65
  end

  def young?
    @age <= 12
  end 
end
