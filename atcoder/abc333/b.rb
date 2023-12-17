s = gets.chomp
t = gets.chomp

hen = %w[AB BA BC CB CD DC DE ED EA AE]
if hen.include?(s) && hen.include?(t)
  puts 'Yes'
elsif !hen.include?(s) && !hen.include?(t)
  puts 'Yes'
else
  puts 'No'
end