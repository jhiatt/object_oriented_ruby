class Vehicle
  def initialize(input_hash)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle
  def initialize (input_hash)
    super
    @make = input_hash[:make]
    @model = input_hash[:model]
  end

  # def brake
  #   @speed = 0
  # end

  # def accelerate
  #   @speed += 10
  # end

  # def turn(new_direction)
  #   @direction = new_direction
  # end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize (input_hash)
    super
    @brand = input_hash[:brand]
    @type = input_hash[:type]
  end

  # def brake
  #   @speed = 0
  # end

  # def accelerate
  #   @speed += 10
  # end

  # def turn(new_direction)
  #   @direction = new_direction
  # end

  def ring_bell
    puts "Ring ring!"
  end
end


bike1 = Bike.new(brand: "yamaha",type: "cool")
car1 = Car.new(make: "subadu",model: "odessy")

bike1.ring_bell
car1.honk_horn

