strings = gets.chomp.chars
dp = []
# count_dp = []
# index = 0

# strings.each.with_index do |char, i|
#   if i == 1
# end

# (1..strings.length).each do |i|
#   if i == 1
#     dp[i] = [1, strings[i-1]]
#   else
#     # 前の文字と異なる場合、(i-1)文字目を加える
#     if strings[i-1] != strings[i-2]
#       dp[i] = [dp[i-1][0] + 1, strings[i-1]]
#     else
#       dp[i] = [dp[i-1][0], [strings[i-2], strings[i-1]].join]
#     end
#     # 前の文字と同じ場合、合成する
#   end
# end



(1..strings.length).each do |i|
  if i == 1
    dp[i][1] = 1
  elsif i == 2
    dp[i][2] = 1
    if strings[i-1] != strings[i-2]
      dp[i][1] = dp[i-1][1] + 1
    end
  end
end


p dp

puts dp.last.max