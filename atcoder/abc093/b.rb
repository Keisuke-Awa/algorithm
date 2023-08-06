a, b, k = gets.split.map(&:to_i)
array =
  if (b - a + 1) / 2 >= k
    (a..a+k-1).to_a + (b-k+1..b).to_a
  elsif (b - a + 1) <= k
    (a..b).to_a
  else
    (b-k+1..a+k-1).to_a
  end

array.each { |n| puts n }