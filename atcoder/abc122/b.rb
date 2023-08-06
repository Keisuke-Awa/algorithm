str = gets.chomp.chars
str.map! { |s| %w[A C G T].include? s }
result = 0
count = 0

str.each do |bool|
  if bool
    count += 1
  else
    result = count if count > result && count != 1
    count = 0
  end
end

result = count if count > result && count != 1

puts result
