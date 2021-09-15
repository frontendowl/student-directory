@divider = "------------------------"
@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
 
  name = gets.chomp

  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.length} students."
    name = gets.chomp
  end
  
  return @students
end

def print_header
  puts "The students of Villains Academy:"
  puts @divider
end

def print_list
  @students.each_with_index { |student, index| 
    puts "#{ index + 1 }. #{student[:name]} (#{student[:cohort]} cohort)" 
  }
end

def print_footer
  puts @divider
  puts "Overall, we have #{@students.length} great students.\n"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  if @students.length > 0
    print_list
  end
  print_footer
end


def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again?"
  end
end


def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu