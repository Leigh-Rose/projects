class Menu
def initialize
  @items = {"Burger" => "£2.00", "Chips" =>"£1.50", "Chocolate" => "£0.50", "Noodles" => "£1.00"}
end

def menu_items
@items
end

def show_menu
  @items.each {|key, value| puts "#{key} #{value}"}
end

def update_menu(item, price)
  @items[item] = price
  end
end
