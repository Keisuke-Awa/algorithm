s = gets.chomp
words = %w[dream dreamer erase eraser]

judge = 'YES'
until s.empty? do
  reduced = false
  words.each do |word|
    if s.sub!(/#{word}$/,'')
      reduced = true 
      break
    end
  end

  unless reduced
    judge = 'NO'
    puts judge
    exit  
  end
end

puts judge
