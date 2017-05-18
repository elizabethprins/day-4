

class Pizza
  attr_accessor :menu_number, :name, :description, :price

  def initialize(menu_number, name, description, price)
    @menu_number = menu_number
    @name = name
    @description = description
    @price = price
  end


end
