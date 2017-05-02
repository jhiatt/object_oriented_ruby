# gummy1 = {color: "blue", price: "5", flavour: "ocean", size: "large"}
# gummy2 = {:color => "pink", :price => "2", flavour: "berry", size: "medium"}
# gummy1 = {color: "golden", price: "10", :flavour => "gold", :size => "small"}


# puts "We have 3 gummy bears for sale today.  We have a #{gummy1[:size]} #{gummy1[:color]} that is #{gummy1[:price]}."

class Gummy

  attr_reader :color, :price, :flavour, :size
  #attr_writer :price
  attr_accessor :price

  def initialize(input_hash)
    @color = input_hash[:color]
    @price = input_hash[:price]
    @flavour = input_hash[:flavour]
    @size = input_hash[:size]
  end

  # def color
  #   @color
  # end

  # def price
  #   @price
  # end

  # def flavour
  #   @flavour
  # end

  # def size
  #   @size
  # end

  def price=(new_price)
    @price = new_price
  end

end

class Food < Gummy
  attr_accessor :shelflife
  def initialize (input_hash)
    super
    @shelflife = input_hash[:shelflife]
  end
end



gummy1 = Gummy.new({color: "blue", price: 5, flavour: "ocean", size: "large"})
puts gummy1.color
puts gummy1.price

gummy1.price = 20
puts gummy1.price

puts gummy1.size

food = Food.new(color: "blue", price: 5, flavour: "ocean", size: "large", shelflife: 10)

puts food.shelflife
