a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

array = [a, b, c, d, e].select { |ele| ele % 10 == 0 } + [a, b, c, d, e].select { |ele| ele % 10 != 0 }.sort { |a,b| b % 10 <=> a % 10 }

time_count = 0
array.each do |dish|
  if time_count % 10 != 0
    time_count += 10 - (time_count % 10)
  end

  time_count += dish
end

puts time_count