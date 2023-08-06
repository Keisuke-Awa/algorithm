h, w = gets.split.map(&:to_i)
array = []
h.times do
  array << gets.chomp.chars
end

correct = %w[s n u k e]

i = 1
j = 1
t = 1
result = "Yes"


# while result == 'Yes' do
  # 最初
  if t == 1
    array[i-1][j-1] == correct[(t-1) % 5]
    # 次のものを見つける
    
  else
  end
# end

puts result
