sheets, sum = gets.split.map(&:to_i)

combination = '-1 -1 -1'
(0..sheets).each do |j|
  (0..(sheets - j)).each do |k|
    if sum == (10000 * j) + (5000 * k) + (1000 * (sheets - j - k))
      combination = "#{j} #{k} #{sheets - j - k}"
      break
    end
  end
end

puts combination