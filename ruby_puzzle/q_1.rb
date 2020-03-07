num = 10
while true do
  break if num.to_s == num.to_s.reverse && num.to_s(2) == num.to_s(2).reverse && num.to_s(8) == num.to_s(8).reverse
  num += 1
end

p num