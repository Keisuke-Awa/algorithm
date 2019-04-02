n = gets
cards = gets.split.map(&:to_i)
odds = []
evens = []
cards.sort.reverse.each.with_index(1) do |num, i|
  if i.odd?
    odds << num
  else
    evens << num
  end
end
puts odds.inject(&:+) - evens.inject(&:+)