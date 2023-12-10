n, m = gets.split.map(&:to_i)
shirts = gets.chomp.chars.map(&:to_i)

tmp_logo_counter = 0
tmp_all_counter = 0
result = []
shirts.each do |s|
  if s == 0
    if tmp_all_counter > m
      result << tmp_logo_counter + tmp_all_counter - m
    else
      result << tmp_logo_counter
    end
    tmp_logo_counter = 0
    tmp_all_counter = 0
  elsif s == 1
    tmp_all_counter += 1
  else
    tmp_logo_counter += 1
  end
end

if tmp_all_counter > m
  result << tmp_logo_counter + tmp_all_counter - m
else
  result << tmp_logo_counter
end

puts result.max