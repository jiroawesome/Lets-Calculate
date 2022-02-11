def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Select operations:"
puts "1. Add"
puts "2. Subtract"
puts "3. Multiply"
puts "4. Divide"
puts "Select from above: "
response = gets.chomp

case response
when '1'
  puts "Enter the first number: "
  n1 = gets.chomp
  puts "Enter the second number: "
  n2 = gets.chomp
  answer = n1.to_f + n2.to_f
  puts "The answer is: #{answer}"

when '2'
  puts "Enter the first number: "
  n1 = gets.chomp
  puts "Enter the second number: "
  n2 = gets.chomp
  answer = n1.to_f - n2.to_f
  puts "The answer is: #{answer}"

when '3'
  puts "Enter the first number: "
  n1 = gets.chomp
  puts "Enter the second number: "
  n2 = gets.chomp
  answer = n1.to_f * n2.to_f
  puts "The answer is: #{answer}"

when '4'
  puts "Enter the first number: "
  n1 = gets.chomp
  puts "Enter the second number: "
  n2 = gets.chomp
  answer = n1.to_f / n2.to_f
  puts "The answer is: #{answer}"

end
