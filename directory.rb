students = [
  "Dr. Hannibal Lecter",
  "Darth Vader", 
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]

@divider = "------------------------"

def print_header
  puts "The students of Villains Academy"
  puts @divider
end

def print(names)
  names.each { |name| puts name }
end

def print_footer(names)
  puts @divider
  puts "Overall, we have #{names.length} great students."
end

print_header()
print(students)
print_footer(students)