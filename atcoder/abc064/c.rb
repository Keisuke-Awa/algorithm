n = gets.to_i
rates = gets.split.map(&:to_i)
rate_colors = Array.new(8, 0)
over_3200 = 0
rates.each do |rate|
  if rate < 400
    rate_colors[0] += 1
  elsif rate < 800
    rate_colors[1] += 1
  elsif rate < 1200
    rate_colors[2] += 1
  elsif rate < 1600
    rate_colors[3] += 1
  elsif rate < 2000
    rate_colors[4] += 1
  elsif rate < 2400
    rate_colors[5] += 1
  elsif rate < 2800
    rate_colors[6] += 1
  elsif rate < 3200
    rate_colors[7] += 1
  else
    over_3200 += 1
  end
end

color_count = rate_colors.count { |ele| ele > 0 }

if over_3200 == 0
  puts "#{color_count} #{color_count}"
else
  puts "#{[1,color_count].max} #{color_count + over_3200}"
end