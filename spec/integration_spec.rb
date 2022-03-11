require 'takeaway'
require 'order'

RSpec.describe 'integration' do
  context 'We add a new order' do
    it 'shows it in the list of orders' do
      takeaway = Takeaway.new
      order_1 = Order.new
      takeaway.new_order(order_1)
      expect(takeaway.show_orders).to eq [order_1]
    end
  end
end