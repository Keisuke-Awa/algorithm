n, m = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
count = 0


while array.select { |ele| ele >= array[0] && ele <= array[1] }.length < m do
  # もしa1 > a2の場合
  # a2以上のもので最小のものを探す


  #処理終了
end

puts count
