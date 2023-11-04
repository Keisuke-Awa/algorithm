m = gets.to_i
days = gets.split.map(&:to_i)
m_day = (days.sum + 1)/2
sum = 0
days.each.with_index(1) do |d, i|
  if sum + d >= m_day
    puts "#{i} #{m_day - sum}"
    break
  end

  sum += d
end
