def line(people)
  line_array = []
  if people.length == 0
    puts "The line is currently empty."
  else
    people.each.with_index(1) do |name, index|
      line_array.push("#{index}. #{name}")
    end
    puts "The line is currently: #{line_array.join(" ")}"
  end
end

def take_a_number(people, name)
  people.push(name)
  puts "Welcome, #{name}. You are number #{people.length} in line."
end

def now_serving(people)
  if people.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{people.first}."
    people.shift()
  end
end

line = []
now_serving(line)
take_a_number(line, "Irfan")
