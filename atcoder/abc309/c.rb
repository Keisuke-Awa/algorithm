n, k = gets.split.map(&:to_i)
medicines = []
n.times do
  medicines << gets.split.map(&:to_i)
end
medicines.sort! { |a,b| a[0] <=> b[0] }
sum = medicines.map(&:last).sum

if sum <= k
  puts 1
else
  medicines.each.with_index do |med, i|
    sum -= med[1]
    if sum <= k
      puts med[0] + 1
      break
    end
  end
end

