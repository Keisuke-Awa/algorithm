n, q = gets.split.map(&:to_i)
string = gets.chomp.chars
questions = []
q.times do
  questions << gets.split.map(&:to_i)
end

dp = []
(1..n).each do |i|
  result = string[i-1] == string[i] ? 1 : 0

  if i == 1
    dp << result
  else
    dp << dp[i-2] + result
  end
end

questions.each do |question|
  if question[0] == question[1]
    puts 0
  else
    left =
      if question[0] == 1
        0
      else
        dp[question[0]-2]
      end

    right = dp[question[1]-2]
    puts right - left
  end
end

