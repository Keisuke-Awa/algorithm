tap = gets.chomp.chars
odds = ['R', 'U', 'D']
evens = ['L', 'U', 'D']

check = true
tap.each.with_index(1) do |t, i|
  check =
    if i.odd?
      odds.include? t
    else
      check = evens.include? t
    end
  break unless check
end

puts check ? 'Yes' : 'No'