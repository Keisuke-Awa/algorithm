h, w = gets.split.map(&:to_i)
array = []
h.times do
  array << gets.chomp.chars
end

result_array = []

(0..h-1).each do |i|
  row = []
  (0..w-1).each do |j|
    if array[i][j] == '.'
      result = 0
      # 左 i, j-1
      if j - 1 >= 0
        result += 1 if array[i][j-1] == '#'
      end
      # 右 i, j+1
      if j + 1 <= w - 1
        result += 1 if array[i][j+1] == '#'
      end
      # 左上 i-1, j-1
      if i - 1 >= 0 && j - 1 >= 0
        result += 1 if array[i-1][j-1] == '#'
      end
      # 上 i-1, j
      if i - 1 >= 0
        result += 1 if array[i-1][j] == '#'
      end
      # 右上 i-1, j+1
      if i - 1 >= 0 &&  j + 1 <= w - 1
        result += 1 if array[i-1][j+1] == '#'
      end
      # 左下 i+1, j-1
      if i + 1 <= h - 1 && j - 1 >= 0
        result += 1 if array[i+1][j-1] == '#'
      end
      # 下 i+1, j
      if i + 1 <= h - 1
        result += 1 if array[i+1][j] == '#'
      end
      # 右下 i+1, j+1
      if i + 1 <= h - 1 &&  j + 1 <= w - 1
        result += 1 if array[i+1][j+1] == '#'
      end
    else
      result = "#"
    end
    row << result
  end
  result_array << row
end


result_array.each do |row|
  puts row.join
end