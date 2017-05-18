require_relative "pizza_class.rb"

class Menu
  attr_accessor :pizzas

  def initialize
    @pizzas = []

    @pizzas << Pizza.new(1, "Pepperoni", "the classic king of pizza", 7)
    @pizzas << Pizza.new(2, "Margarita", "like a regular Margarita, but better, yummier", 5)
    @pizzas << Pizza.new(3, "Quattro Formaggi", "the one with all the cheese", 7)
    @pizzas << Pizza.new(4, "Funghi", "pretty fly for a fungi...", 6)
  end

  def print_menu
    puts "Slice up your life! Check these out: "

    pizzas.each do |pizza|
      puts "#{pizza.menu_number}: #{pizza.name} -- #{pizza.description} -- #{pizza.price} Euros"
    end
    puts "\n"
  end

  def make_choice
    puts "All pizzas are created equally delicious. Choose ONE by entering its number: "
    pizza_number = gets.chomp.to_i

    @pizzas.find { |pizza| pizza.menu_number == pizza_number }
  end


end
