n = gets.to_i
towns = gets.split.map(&:to_i)
braves = gets.split.map(&:to_i)
# braves_rest = braves.dup

counter = 0
braves.each.with_index do |brave, i|
  # iの街で全て倒す場合
  if towns[i] >= brave
    couter += brave
  else
    counter += towns[i]
  end
end

puts counter