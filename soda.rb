class Soda
  attr_reader :brand, :price  # need to access them so attr_reader

  def initialize(args = {})
    @brand = args[:brand]
    @price = args[:price]
  end
end
