k, g, m = gets.split.map(&:to_i)

tmp_g = 0
tmp_m = 0
k.times do
  if tmp_g == g
    tmp_g = 0
  elsif tmp_m == 0
    tmp_m = m
  else
    if tmp_g + tmp_m <= g
      tmp_g += tmp_m
      tmp_m = 0
    else
      tmp_m = tmp_m - (g - tmp_g)
      tmp_g = g
    end
  end
end

puts tmp_g.to_s + " " + tmp_m.to_s