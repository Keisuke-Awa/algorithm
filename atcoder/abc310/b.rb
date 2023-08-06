n, m = gets.split.map(&:to_i)
array = []
n.times do
  array << gets.split.map(&:to_i)
end

result = "No"

array.each.with_index do |base_ele, i|
  base_price = base_ele[0]
  base_funcs = base_ele[2..-1]

  array.each.with_index do |hikaku_ele, j|
    next if i == j

    hikaku_price = hikaku_ele[0]
    hikaku_funcs = hikaku_ele[2..-1]

    if base_price <= hikaku_price && (base_funcs & hikaku_funcs).length >= hikaku_ele[1] && (base_price < hikaku_price || base_funcs.length > hikaku_funcs.length)
      result = "Yes"
      break
    end
  end

  break if result == "Yes"
end

puts result