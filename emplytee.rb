require "Faker"

class Employee
  attr_reader :first_name, :last_name, :salary
  attr_accessor :active
  def initialize(input_hash)
    @first_name = input_hash[:first_name] ||= 'Jon'
    @last_name = input_hash[:last_name] ||= 'Smith'
    @salary = input_hash[:salary] ||= 0
    @active = input_hash[:active] ||= false
  end
  def print_info
    puts "#{@first_name} #{@last_name} makes $#{@salary} a year."
  end
  def give_annual_raise
    @salary = @salary * 1.05
  end

  def full_name
    if @last_name[-1] == "s"
      return "#{@first_name} #{@last_name}, Esquire"
    else
      return "#{@first_name} #{@last_name}"
    end
  end

end

employee1 = Employee.new(first_name: Faker::Name.first_name, last_name: "Barnes", salary: 20, active: true)
employee2 = Employee.new(first_name: "Jonas")



puts employee1.full_name
puts employee2.full_name

p employee2