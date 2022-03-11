require 'takeaway'
require 'order'

RSpec.describe 'Takeaway class' do

  # testing show_orders
  context 'we initialize the class' do
    it 'initializes with an empty list of orders' do
      takeaway = Takeaway.new
      expect(takeaway.show_orders).to eq []
    end
  end

  # testing view_menu
  context 'We view the menu' do
    it 'formats and prints the menu' do
      takeaway = Takeaway.new
      expect(takeaway.view_menu).to eq 'Burrito: £9, Fajita: £10, Salsita: £11'
    end
  end
end