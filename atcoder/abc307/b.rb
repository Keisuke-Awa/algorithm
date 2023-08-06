n = gets.chomp.to_i
array = []
n.times do
  array << gets.chomp
end

# (1..n).each do |i|
#   (1..n).each do |j|
#     next if i == j

#     kumiawase << [i, j]
#   end
# end

result = 'No'

array.each.with_index do |base_word, i|
  array.each.with_index do |word, j|
    next if i == j

    ketugou_word_array = base_word.chars.concat(word.chars)

    if ketugou_word_array.length.even?
      tmp_array = ketugou_word_array.each_slice(ketugou_word_array.length / 2).to_a
      result = 'Yes' if tmp_array[0] == tmp_array[1].reverse
    else
      ketugou_word_array.delete_at((ketugou_word_array.length-1)/2)
      tmp_array = ketugou_word_array.each_slice(ketugou_word_array.length / 2).to_a
      result = 'Yes' if tmp_array[0] == tmp_array[1].reverse
    end

    break if result == 'Yes'
  end
end

puts result