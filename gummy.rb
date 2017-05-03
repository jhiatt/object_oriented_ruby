require "./price.rb"

class Gummy
  include SetPrice

  attr_reader :color, :flavour, :size
  attr_accessor :price

  def initialize(input_hash)
    @color = input_hash[:color]
    @price = input_hash[:price]
    @flavour = input_hash[:flavour]
    @size = input_hash[:size]
  end


end