require 'terminal-table'
require 'colorize'

#CREATE SHOPPING LIST AND GIVE IT A NAME
def create_shopping_list
  print "whats the name of your list: "
  list_name = gets.chomp
  #create new hash 
  hash = {"name" => list_name, "items" => Array.new}
  return hash
end

#DEFINE A METHOD TO ADD ITEMS TO THE LIST
def add_item
  print "What's the name of the item you would like to add?: "
  name_of_item = gets.chomp
  puts ""
  # hash = {"item name"=> name_of_item}
  print "Quantity: "
  quantity = gets.chomp.to_i
  return [name_of_item, quantity]
end

#DEFINE METHOD TO PRINT LIST OUT ON THE SCREEN
def print_list(shopping_list)
  table = Terminal::Table.new :title => @list_name, :headings => ['Item'.white.on_green, 'Quantity'.white.on_green], :rows => shopping_list["items"]
  table.style = {:width => 40, :padding_left => 3, :border_x => "-", :border_i => "x"}
  puts table
end

#RUN METHOD TO CREATE THE LIST
puts "\n WELCOME: LETS CREATE YOUR SHOPPING LIST".white.on_green
puts "------------------------------------------"
shopping_list = create_shopping_list
puts ""
puts "Let's add items to our shopping list."

x = "yes"
while x == "yes" do
  shopping_list['items'].push(add_item())
  puts "another item? Enter 'yes' or 'no'"
  x = gets.chomp.downcase
end

print_list(shopping_list)