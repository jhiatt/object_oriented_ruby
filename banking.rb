require 'faker'
customers = []

2.times do

  puts 'Enter your first name:'
  first_name = gets.chomp!
  puts 'Enter your last name:'
  last_name = gets.chomp!
  puts 'Enter your email:'
  email = gets.chomp!

  customers<< {first_name: first_name, last_name: last_name, email: email, account: Faker::Number.number(10)}

 end
 p customers