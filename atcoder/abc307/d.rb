n = gets.to_i
base = gets.chomp

regex_patten = /\([a-z]*\)/
while base.match?(regex_patten) do
  new_word = base.gsub(regex_patten, '')
  break if base == new_word

  base = new_word
end

puts base
