n, m = gets.split.map(&:to_i)
array = []
m.times do
  array << gets.split
end

cleared = Array.new(n, false)
penalty_counter = Array.new(n, 0)
clear = 0
pena = 0

array.each do |t|
  num = t[0].to_i
  res = t[1]

  next if cleared[num-1]

  if res == "AC"
    clear += 1
    cleared[num-1] = true
    pena += penalty_counter[num-1]
  else
    penalty_counter[num-1] += 1
  end
end

puts "#{clear} #{pena}"