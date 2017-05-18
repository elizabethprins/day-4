require_relative "menu.rb"
require_relative "order.rb"

done = false
order = Order.new
menu = Menu.new

def print_divider
  puts "\n"
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end



puts "\n*   Hello Pizza Friend!   *\n*   Welcome to our pizza delivery!   *"
print_divider

while not done
  puts "Ready to order a pizza?"
  puts "1: YES!!!"
  puts "2: No, I am here by mistake. :("
  puts "3: I've placed my order of #{order.value} Euros and I'm ready to check out!" if order.value > 0
  print_divider

  choice = gets.chomp.to_i
  case choice
    when 1
      puts "Alright, let's get started!"
      print_progress_bar
      menu.print_menu
      pizza = menu.make_choice
      order.add(pizza)
    when 2
      done = true
    when 3
      order.print
      puts "Which payment type do you prefer?"
      puts "1: Cash"
      puts "2: iDeal"
      payment_type = gets.chomp.to_i
      done = ( payment_type == 1 || payment_type == 2 )
    else
      puts "Try that again, please!"
      print_progress_bar
  end

  if done
    puts "Thank you for your visit! Hope to see you again soon."
    puts "   __"
    puts " // \"\"--.._"
    puts "||  (_)  _   \"-._"
    puts "||    _ (_)   (_)  '-."
    puts "||   (_)     __..-'"
    puts " \\__..--\"\""
  end
end
