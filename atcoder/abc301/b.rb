n = gets.chomp.to_i
array = gets.split.map(&:to_i)
result = []

array.each.with_index do |num, i|
  result << num
  break if array.length ==  i + 1

  if array[i + 1] > num && array[i + 1] - num > 1
    (array[i + 1] - num -1).times do |i|
      result << num + i + 1
    end
  elsif array[i + 1] < num && num - array[i + 1] > 1
    (num - array[i + 1] -1).times do |i|
      result << num - i - 1
    end
  end
end


puts result.join(" ")