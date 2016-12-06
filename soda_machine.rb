class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    # p @soda.class
    @sodas.find { |soda| soda.brand == soda_brand}
  end

  def sell(soda_brand)
    the_soda = find_soda(soda_brand) #because this is what was sold
    if the_soda
      price = the_soda.price  # price of what was sold
      @cash += price  
      @sodas.delete(the_soda)
    end
  end

end


  