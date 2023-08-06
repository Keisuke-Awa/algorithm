s = gets.to_i
sequence = [s]
i = 1
while true do
  num =
    if sequence[i-1].even?
      sequence[i-1] / 2
    else
      3 * sequence[i-1] + 1
    end

  break if sequence.include? num

  sequence << num
  i += 1
end
puts i + 1
