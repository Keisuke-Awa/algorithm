a, b, c = gets.split.map(&:to_i)
memo = Array.new(b+1, false)
result = "YES"
keisu = 1
while true do
  amari = (a * keisu) % b

  if amari == c
    break
  else
    if memo[amari]
      result = "NO"
      break
    else
      memo[amari] = true
    end
  end

  keisu += 1
end

puts result