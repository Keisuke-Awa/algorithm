n = gets.to_i
strings = {}
n.times do
  str = gets.chomp
  if strings[str]
    strings[str] = strings[str] + 1
  else
    strings[str] = 1
  end
end

strings = strings.sort{|a, b| b[1] <=> a[1] }

result = []
max = 0
strings.each.with_index do |str, i|
  if i == 0
    max = str[1]
    result << str[0]
  elsif max == str[1]
    result << str[0]
  else
    break
  end
end

result.sort.each do |str|
  puts str
end