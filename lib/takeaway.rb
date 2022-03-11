class Takeaway
  def initialize
    @menu = {"Burrito" => 9, "Fajita" => 10, "Salsita" => 11}
    @orders = []
  end

  def view_menu
    @menu.map { |k, v| "#{k}: £#{v}" }.join(", ")
  end

  def new_order(order) # takes instance of Order
    @orders << order
  end

  def show_orders
    @orders
  end
end