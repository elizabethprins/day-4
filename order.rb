class Order
  attr_accessor :shopping_cart

  def initialize
    @shopping_cart = []
  end

  def add(pizza)
    @shopping_cart << pizza
  end

  def value
    @shopping_cart.reduce(0){|sum,pizza| sum + pizza.price }
  end

  def print
    puts "This is in your shopping cart:"
    puts "------------------"
    @shopping_cart.each do |pizza|
      puts "#{pizza.name} - #{pizza.price}"
    end
    puts "------------------"

  end

  
end
