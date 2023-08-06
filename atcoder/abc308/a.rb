base_array = gets.split.map(&:to_i)

result = "No"
if base_array == base_array.sort
  shori_array = base_array.map { |ele| ele >= 100 && ele <= 675 && ele % 25 == 0}.uniq
  result = 'Yes' if shori_array.length == 1 && shori_array[0]
end

puts result