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
  puts "Which numbers would you like to add? Enter the first number that you would like to Add."
  n1 = gets.chomp
  puts "Then, Enter the second number that will be added."
  n2 = gets.chomp
  answer = n1.to_f + n2.to_f
  puts "The answer is: #{n1} + #{n2} = #{answer}"

when '2'
  puts "Which numbers would you like to add? Enter the first number that you would like to subtract."
  n1 = gets.chomp
  puts "Then, Enter the second number that will subtract the previous number."
  n2 = gets.chomp
  answer = n1.to_f - n2.to_f
  puts "The answer is: #{n1} - #{n2} = #{answer}"

when '3'
  puts "Which numbers would you like to add? Enter the first number that you would like to be multiplied."
  n1 = gets.chomp
  puts "Then, Enter the second number that will multiply the first number."
  n2 = gets.chomp
  answer = n1.to_f * n2.to_f
  puts "The answer is: #{n1} * #{n2} = #{answer}"

when '4'
  puts "Which numbers would you like to add? Enter the first number that you would like to be divided."
  n1 = gets.chomp
  puts "Then, Enter the second number that will divide the first number."
  n2 = gets.chomp
  answer = n1.to_f / n2.to_f
  puts "The answer is: #{n1} / #{n2} = #{answer}"

end
