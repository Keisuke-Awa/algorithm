n = gets.to_i
array = gets.split.map(&:to_i).sort
array = array.each_slice(array.length / 2).to_a
# 半分にする
abc_array = array[0]
arc_array = array[1]

puts arc_array.first - abc_array.last
