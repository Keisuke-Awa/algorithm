n = gets.to_i
array = []
n.times do
  array << gets.chomp.chars.map(&:to_i)
end

row_num = array[0].length

result_array = []

n.times do |i|
  result_array << []
  row_num.times do |j|
    result_array[i] <<
      # 1行目の場
      if i == 0
        if j == 0
          array[i+1][0]
        else
          array[i][j-1]
        end
      # n行目の場合
      elsif i == n - 1
        if j == row_num - 1
          array[i-1][j]
        else
          array[i][j+1]
        end
      # 1行目でもn行目でもない場合
      else
        if j == 0
          array[i+1][0]
        elsif j == row_num - 1
          array[i-1][j]
        else
          array[i][j]
        end
      end
  end
end

result_array.each do |arr|
  puts arr.join('')
end