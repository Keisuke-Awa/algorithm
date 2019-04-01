num = gets.to_i
array = gets.split.map(&:to_i)

try = 0
while true do
  # break unless array.count {|n| n % 2 == 0} == num
  break unless array.all?(&:even?)
  try += 1
  array.map! {|n| n / 2 }
end

puts try