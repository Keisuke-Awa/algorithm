# https://atcoder.jp/contests/abc088/tasks/abc088_b

n = gets.to_i
cards = gets.split.map(&:to_i)

alice = 0
bob = 0
cards.sort.reverse.each.with_index(1) do |num, i|
  if i.odd?
    alice += num
  else
    bob += num
  end
end

puts alice - bob