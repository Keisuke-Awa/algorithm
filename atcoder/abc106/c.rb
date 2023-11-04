s = gets.chomp.chars
k = gets.to_i

counter = 0
s.each do |str|
  break if str.to_i != 1

  counter += 1
end

if counter == 0
  puts s[0]
else
  if k <= counter
    puts 1
  else
    puts s[counter]
  end
end
