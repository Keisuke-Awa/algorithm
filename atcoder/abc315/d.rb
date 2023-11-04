h, w = gets.split.map(&:to_i)
array = []
h.times do
  array << gets.chomp.chars
end

counter = 0

if array.length >= 1
  w.times do |i|
    if array.map { |ele| ele[i] }.uniq.length == 1
      array.each do |arr|
        counter += 1
      end
    end
  end
end

puts (array.length * array[0].length) - counter
