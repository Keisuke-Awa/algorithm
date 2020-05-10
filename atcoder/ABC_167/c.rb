num = gets.split.map(&:to_i)
books = []
num[0].times do
  books << gets.split.map(&:to_i)
end
books.sort! {|a, b| a[0] <=> b[0] }
skills = []
num[1].times do
  skills << 0
end
x = num[2]
sum = 0

books.each do |b|
  sum = sum + b[0]
  b.delete_at(0)
  b.each.with_index do |content, i|
    skills[i] = skills[i] + content 
  end
  p skills
  break if skills.min >= x
end

p sum
p skills
