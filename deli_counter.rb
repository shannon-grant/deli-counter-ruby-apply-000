require "pry"
katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"

    katz_deli.each_with_index do |customer, index|
      binding.pry
      current_line = current_line + " #{index+1}. #{customer}"
    end
    puts "#{current_line}"
  end
end

line(["Shannon", "Brianna"])

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else !katz_deli.empty?
    puts "Currently serving #{katz_deli [0]}."
    katz_deli.shift
  end
end
