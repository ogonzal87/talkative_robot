class Author < Person
  def initialize(args)
    super(args) 
    @name   = "OG"
    @age    = 28
    @gender = "M"
  end
end