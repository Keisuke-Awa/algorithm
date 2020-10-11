# https://atcoder.jp/contests/abc157/tasks/abc157_b

bingo = []
3.times do
  bingo << gets.split.map(&:to_i)
end

n = gets.to_i
deme = []
  deme << gets.to_i
end

deme.each do |d|
  bingo.map! do |b|
    b.map! { |num| num == d ? true : num  }
  end
end

result = 'No'

if result == 'No'
  bingo.each do |b|
    break result = 'Yes' if b[0] == true && b[1] == true && b[2] == true
  end
end

if result == 'No'
  (0..2).each do |i|
    break result = 'Yes' if bingo[0][i] == true && bingo[1][i] == true && bingo[2][i] == true
  end
end

if result == 'No'
  result = 'Yes' if bingo[0][1] == true && bingo[1][1] == true && bingo[2][2] == true
end

if result == 'No'
  result = 'Yes' if bingo[0][2] == true && bingo[1][1] == true && bingo[2][0] == true
end

puts result