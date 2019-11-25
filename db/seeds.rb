Item.destroy_all
product1 = Item.create({:name=>"tomato", :price => 1})
product2 = Item.create({:name=>"milk", :price => 3})
product3 = Item.create({:name=>"bread", :price => 5.50})
product4 = Item.create({:name=>"bacon", :price => 10})
product5 = Item.create({:name=>"cheese", :price => 3.20})

puts "Total number of products: #{Item.all.count}"
puts "Product names: #{Item.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
puts "Product5: #{product5.name} price: #{product5.price.round(2)}"

# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"