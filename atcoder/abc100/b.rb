d, n = gets.split.map(&:to_i)

if d == 0
  if n == 100
    puts 101
  else
    puts n
  end
elsif d == 1
  if n == 100
    puts 101 * 100
  else
    puts n * 100
  end
else d == 2
  if n == 100
    puts 101 * 10000
  else
    puts n * 10000
  end
end