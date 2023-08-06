base_array = gets.split
ate_dish = gets.split
dish_color = gets.split
dish_price = gets.split.map(&:to_i)

dish_price_hash = {}
dish_color.each.with_index(1) do |color, i|
  dish_price_hash[color] = dish_price[i]
end

result = 0
ate_dish.each do |dish|
  if dish_price_hash[dish]
    result += dish_price_hash[dish]
  else
    result += dish_price[0]
  end
end

puts result