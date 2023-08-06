stations = gets.chomp.chars
if stations.uniq.length == 1
  puts 'No'
else
  puts 'Yes'
end
