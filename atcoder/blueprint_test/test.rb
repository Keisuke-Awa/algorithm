stock_prices = [0, 100, 200, 1000, 20, 50]
sample_stock_prices = [960, 960, 960, 1000, 0, 50]
buy_prices = stock_prices.dup
buy_prices.pop
benefit = []
# buy_prices.each.with_index do |buy_price, i|
#   # puts  "buy: #{buy_price}, buy_index: #{i}"
#   stock_prices.each.with_index do |sell_price, m|
#     # puts "sell: #{sell_price}, sell_index: #{m}"
#     # puts "buy_index: #{i}, sell_index: #{m}"

#     benefit << sell_price - buy_price if m > i
#   end
# end

buy_prices.each.with_index do |buy_price, i|
  p stock_prices[i+1..-1]
  # benefit << stock_prices[i+1..-1].max - buy_price
end

p benefit.max
