# gummy1 = {color: "blue", price: "5", flavour: "ocean", size: "large"}
# gummy2 = {:color => "pink", :price => "2", flavour: "berry", size: "medium"}
# gummy1 = {color: "golden", price: "10", :flavour => "gold", :size => "small"}


# puts "We have 3 gummy bears for sale today.  We have a #{gummy1[:size]} #{gummy1[:color]} that is #{gummy1[:price]}."

class Gummy

  def initialize(input_color, input_price, input_flavour, input_size)
    @color = input_color
    @price = input_price
    @flavour = input_flavour
    @size = input_size
  end

  def color
    @color
  end

  def price
    @price
  end

  def flavour
    @flavour
  end

  def size
    @size
  end

  def price=(new_price)
    @price = new_price
  end

end


gummy1 = Gummy.new("blue", 5, "ocean", "large")
puts gummy1.color
puts gummy1.price

gummy1.price = 20
puts gummy1.price

puts gummy1.size