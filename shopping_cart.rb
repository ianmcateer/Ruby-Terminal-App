#create a shopping list app inside the terminal
#allow user to add an item, delete item and update items


def add_item

    puts "Enter item name you would like to add to your shopping list. enter 'done' when finished"
    item_name = gets.chomp
    break if item_name == 'done'
    print "Amount: "
    amount = gets.chomp
    break if amount == 'done'
    
    puts shopping_cart_hash
    return shopping_cart_hash

end

# def delete_item
#   puts "Type the number of the item you want to delete!"
# 	 item_to_delete = gets.chomp
# end



loop do 
  puts "\n SHOPPING LIST MENU"
	puts "------------------------------------------------------------------"
	puts "ADD ITEM:type 'a'   | UPDATE ITEM:type 'u' | DELETE ITEM:type 'd' |"
	puts "PRINT ALL:type 'p'  | QUIT:type 'q'        | DELETE ALL :type 'c' |"
	puts "------------------------------------------------------------------"

hash = { "items" => [] , "amount" => [] }

answer = gets.chomp
case answer

  when "a"
      add_item
    
  when 'd'
      delete_item
		
 end
end
