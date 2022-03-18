require 'order'
require 'menu'

RSpec.describe Order do

it "calculates order" do
io = double :io
expect(io).to receive(:puts).with("Burger £2.00").ordered
expect(io).to receive(:puts).with("Chips £1.50").ordered
expect(io).to receive(:puts).with("Total to pay: £3.5").ordered
menu = Menu.new
order_1 = Order.new(menu, io)
order_1.select_food("Burger")
order_1.select_food("Chips")
order_1.calculate_order
end


it "calculates order when duplicate items are added" do
io = double :io
expect(io).to receive(:puts).with("Burger £2.00").ordered
expect(io).to receive(:puts).with("Burger £2.00").ordered
expect(io).to receive(:puts).with("Total to pay: £4").ordered
menu = Menu.new
order_1 = Order.new(menu, io)
order_1.select_food("Burger")
order_1.select_food("Burger")
order_1.calculate_order
end
end
