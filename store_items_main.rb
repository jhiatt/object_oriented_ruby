require "./gummy.rb"
require "./food.rb"
require "./price.rb"

gummy1 = Gummy.new({color: "blue", price: 5, flavour: "ocean", size: "large"})
puts gummy1.color
puts gummy1.price

gummy1.price = 20
puts gummy1.price

puts gummy1.size

food = Food.new(color: "blue", price: 5, flavour: "ocean", size: "large", shelflife: 10)

puts food.shelflife

puts food.flavour

gummy1.set_price(15)

puts gummy1.price