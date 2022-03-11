class Order
  def initialize
    @items = []
  end

  def items
    @items
  end

  def add_item(item) # takes an item from takeaway menu
    @items << item
  end

  def view_receipt
    receipt = ""
    if @items.empty?
      "No items"
    else
      receipt += @items.map { |i|"#{i["name"]}: £#{i["price"]}" }.join(", ")
      total_price = add_total
      if discount? 
        receipt += ", Discount: -£#{total_price / 2}"
        total_price /= 2
      end
      receipt += ", Total: £#{total_price}"
    end
  end

  def add_total
    total = []
    for item in @items do
      price = item["price"]
      total << price
    end
    total.sum
  end

  def discount?
    random_number = rand(1..20)
    random_number == 1
  end
end