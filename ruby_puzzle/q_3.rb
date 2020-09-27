N = 100
array = Array.new(N, false)

(2..N).each do |n|
  i = n
  while i < array.size do
    array[i - 1] = !array[i - 1]
    i += n
  end
end

array.each.with_index(1) do |v, i|
  puts i unless v
end
