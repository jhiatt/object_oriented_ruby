students = []


until students.include?("done")
  puts "Enter student name:"

  students << gets.chomp

end

if students.include?("done")
  students.pop
end



random_group = students.shuffle

p random_group

i= 0

if random_group.length % 2 != 0

  puts "group: #{random_group[-3..-1].join(" ")}"

  random_group.pop(3)
end


  while i < random_group.length
    
    puts "group: #{random_group[i..i+1].join(" ")}"
    i+=2

  end
