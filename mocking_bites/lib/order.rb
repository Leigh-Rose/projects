class Order
def initialize(menu)
  @io = io
@menu = menu
@order = []
end

def select_food(item)
@order << @menu.menu_items.assoc(item)
end

def calculate_order
@bill = @order.flatten
@values = @bill.select.with_index{ |_,i| i.odd? }
@currency_to_i = @values.each.map {|v| v.gsub(/[^\d\.]/, '').to_f}
@total = @currency_to_i.sum
puts @bill.join("\n")
.puts "Total to pay: £#{@total}"
end
end

#while true
  #do puts "Hello, welcome to Leigh's cafe, would you like to see the menu? (Y/N)"
    #input = gets.chomp
  #  if input == "Y"
    #  puts order_1.see_menu#
  #  else
