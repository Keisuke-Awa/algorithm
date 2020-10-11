# https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_b

tate, yoko = gets.split.map(&:to_i)

result =
  if tate == 1 || yoko == 1
    1
  elsif (tate * yoko).odd?
    (tate * yoko + 1) / 2
  else
    tate * yoko / 2
  end
  
puts result