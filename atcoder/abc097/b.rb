x = gets.to_i

result = 1

(2..x).each do |i|
  answer = i
  (2..x).each do |j|
    beki = i ** j
    break if beki > x

    result = i ** j if i ** j > result
  end
end

puts result