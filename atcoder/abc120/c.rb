cubes = gets.chomp.chars.map(&:to_i)

count_0 = 0
count_1 = 0

cubes.each do |cube|
  if cube == 0
    count_0 += 1
  else
    count_1 += 1
  end
end

puts [count_0, count_1].min * 2