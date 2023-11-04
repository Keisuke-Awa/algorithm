n = gets.to_i
array = []
n.times { array << gets.to_i }

counter = 1
num = 1
result = 0

lighted = Array.new(n, false)
lighted[0] = true

while true do
  # 次に点灯させるもの
  next_num = array[n-1]
  counter += 1

  if next_num == 2
    result = counter
    break
  else
    if lighted[next_num-1]
      result = -1
      break
    else
      num = next_num
    end
  end
  # 成功するとき
  # 次のボタンが2の時

  # 無限ループに入った時

end

puts result