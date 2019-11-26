require 'faker'

user_count = User.all.count

10.times do |f|             #cree 10 user avec une ville en reference
        User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_name: Faker::Name.first_name, email: "henri#{f+user_count}@yopmail.com", password:"Helloworld")
end
puts "10 utilisateurs crees"


10.times do  |index|    #cree 10 events
        Item.create!(name: Faker::Name.first_name, cat_link: Faker::ChuckNorris.fact, description: Faker::ChuckNorris.fact, price: rand(1..10)*5)
end
puts "10 items crees"

10.times do  |index|    #cree 10 events
        Order.create!(email: "henri@yopmail.com", name: User.all.sample, address: Faker::Address.full_address)
end
puts "10 commandes crees"

10.times do  |index|    #cree 10 events
        Cart.create!(user: User.all.sample)
end
puts "10 paniers crees" 


puts "all entries added"