require 'order'

RSpec.describe Order do
  context 'We initialize the class' do
    it 'items is empty' do
      order_1 = Order.new
      expect(order_1.items).to eq []
    end
  end

  context 'we add an item to the order' do
    it 'shows the item in the list' do
      order_1 = Order.new
      order_1.add_item({"name" => "Burrito", "price" => 9})
      expect(order_1.items).to eq [{"name" => "Burrito", "price" => 9}]
    end
  end

  context 'check if there is a discount' do
    it 'returns true if random number is 1' do
      order_1 = Order.new
      allow(order_1).to receive(:rand).and_return(1)
      expect(order_1.discount?).to eq true
    end

    it 'returns false if number is not 1' do
      order_1 = Order.new
      allow(order_1).to receive(:rand).and_return(5)
      expect(order_1.discount?).to eq false
    end
  end

  context 'we want to format the order into a receipt' do

    it 'adds the total price of all items' do
      order_1 = Order.new
      order_1.add_item({"name" => "Burrito", "price" => 9})
      order_1.add_item({"name" => "Salsita", "price" => 11})
      allow(order_1).to receive(:rand).and_return(5)
      expect(order_1.add_total).to eq 20
    end
  end

  it 'returns an empty receipt if no items ordered' do
    order_1 = Order.new
    expect(order_1.view_receipt).to eq "No items"
  end

  it 'returns only a formatted reciept & total if no discount' do
    order_1 = Order.new
    order_1.add_item({"name" => "Burrito", "price" => 9})
    order_1.add_item({"name" => "Salsita", "price" => 11})
    allow(order_1).to receive(:rand).and_return(5)
    expect(order_1.view_receipt).to eq "Burrito: £9, Salsita: £11, Total: £20"
  end

  it 'returns s formatted reciept plus discount & total if discount' do
    order_1 = Order.new
    order_1.add_item({"name" => "Burrito", "price" => 9})
    order_1.add_item({"name" => "Salsita", "price" => 11})
    allow(order_1).to receive(:rand).and_return(1)
    expect(order_1.view_receipt).to eq "Burrito: £9, Salsita: £11, Discount: -£10, Total: £10"
  end
end