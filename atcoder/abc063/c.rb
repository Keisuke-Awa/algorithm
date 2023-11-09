n = gets.to_i
problems = []
n.times do
  problems << gets.to_i
end

sum = problems.sum
if sum % 10 != 0
  puts sum
else
  problems.sort!

  minus = 0
  problems.each do |pro|
    if pro % 10 != 0
      minus = pro
      break
    end
  end

  if minus == 0
    puts 0
  else
    puts sum - minus
  end
end