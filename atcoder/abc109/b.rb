n = gets.to_i

result = "Yes"
array = []
n.times do |i|
  array << gets.chomp.chars
end

done = []
array.each.with_index do |str, i|
  if i == 0
    done << str
  else
    if done[-1][-1] == str[0] && !done.include?(str)
      done << str
    else
      result = "No"
      break
    end

  end
end

puts result