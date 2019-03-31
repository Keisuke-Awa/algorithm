num = gets.to_i
array = gets.chomp.chars.map(&:to_i)

try = 0
while true do
  break if array.count {|n| n % 2 == 0} == 0
  try += 1
  array.map! {|n| n / 2 }
end

puts try
