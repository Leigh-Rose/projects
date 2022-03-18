require 'menu'

RSpec.describe Menu do
it "shows a list of menu items and prices" do
menu = Menu.new
expect(menu.show_menu).to eq "Burger"=>"£2.00", "Chips"=>"£1.50", "Chocolate"=>"£0.50", "Noodles"=>"£1.00"
end

it "shows"
end
