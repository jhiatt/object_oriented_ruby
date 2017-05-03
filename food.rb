require "./gummy.rb"

class Food < Gummy
  attr_accessor :shelflife
  def initialize (input_hash)
    super
    @shelflife = input_hash[:shelflife]
  end
end