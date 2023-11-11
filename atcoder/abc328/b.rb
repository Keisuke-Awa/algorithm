n = gets.to_i
month_days = gets.split.map(&:to_i)

sum = 0
month_days.each.with_index(1) do |days, i|
  next if i.to_s.chars.uniq.length != 1

  (1..days).each do |day|
    sum += 1 if "#{i}#{day}".to_s.chars.uniq.length == 1
  end
end

puts sum