# https://atcoder.jp/contests/abc086/tasks/abc086_b

n = gets.to_i
k = gets.to_i
balls = gets.split.map(&:to_i)

sum = 0
balls.each do |ball|
  kyori =
    if ball <= k - ball
      ball
    else
      k - ball
    end
  sum += kyori * 2
end

puts sum