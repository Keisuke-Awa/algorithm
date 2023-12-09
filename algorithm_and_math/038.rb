n, q = gets.split.map(&:to_i)
a_array = gets.split.map(&:to_i)
questions = []
q.times do
  questions << gets.split.map(&:to_i)
end

cumulative_sum = [0]
a_array.each.with_index(1) do |ele, i|
  cumulative_sum << ele + cumulative_sum[i-1]
end

questions.each do |q|
  puts cumulative_sum[q[1]] - cumulative_sum[q[0]-1]
end