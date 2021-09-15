@divider = "------------------------"

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.length} students."
    name = gets.chomp
  end
  
  return students
end

def print_header
  puts "The students of Villains Academy:"
  puts @divider
end

def print_list(students)
  students.each { |student| 
    puts "#{student[:name]} (#{student[:cohort]} cohort)" 
  }
end

def print_footer(students)
  puts @divider
  puts "Overall, we have #{students.length} great students."
end

students = input_students()
puts 
print_header()
print_list(students)
print_footer(students)