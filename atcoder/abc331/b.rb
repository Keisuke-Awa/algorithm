n, s, m, l = gets.split.map(&:to_i)
pattern = []

(0..50).each do |i|
  (0..20).each do |j|
    (0..20).each do |k|
      pattern << [i, j, k] if i * 6 + j * 8 + k * 12 >= n
    end
  end
end

result = nil
pattern.each do |array|
  sum = array[0] * s + array[1] * m + array[2] * l
  result = sum if result.nil? || sum < result
end

puts result