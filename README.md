>> Takeaway Task

> User Stories: 

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

As a takeaway owner
So that I can get customer loyalty
I would like a random 5% of my customers to get 50% off their order.

>> class Takeaway
> initialize
    > orders[]
    > menu [{}]
> add_order
> view_menu


>> class Order
> initialize
    > current_order[]
    > random_number int
> add_item(menu item) <takes menu item>
    Puts item in array
> view_receipt
    > if discount, -50% from total
> generate_random_number
> discount?
    > bool
