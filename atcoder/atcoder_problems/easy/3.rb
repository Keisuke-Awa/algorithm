# https://atcoder.jp/contests/code-festival-2016-qualb/tasks/codefestival_2016_qualB_b

n, a, b = gets.split.map(&:to_i)
sankasha = gets.chomp.chars
results = []

jap = 0
kaigai = 0
sankasha.each do |s|
  if s == 'a'
    result = a + b > jap + kaigai ? 'Yes' : 'No'
    jap += 1 if result == 'Yes'
  elsif s == 'b'
    result = a + b > jap + kaigai && kaigai + 1 <= b ? 'Yes' : 'No'
    kaigai += 1 if result == 'Yes'
  else
    result = "No"
  end
  results << result
end

results.each { |r| puts r }