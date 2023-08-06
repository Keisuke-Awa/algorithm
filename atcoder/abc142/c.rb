n = gets.to_i
students = gets.split.map(&:to_i)

students_with_id = []
students.each.with_index(1) do |s, i|
  students_with_id << [s, i]
end

students_with_id.sort!{|a, b| a[0] <=> b[0] }
results = students_with_id.map { |ele| ele[1] }
puts results.join(' ')