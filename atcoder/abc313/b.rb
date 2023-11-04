class Checker

  def self.check(mapped_area, i, j)
    (0..2).each do |ii|
      (0..2).each do |jj|
        return false if mapped_area[i-1+ii][j-1+jj] != '#'
      end
    end
    
    (6..8).each do |ii|
      (6..8).each do |jj|
        return false if mapped_area[i-1+ii][j-1+jj] != '#'
      end
    end

    (0..3).each do |ii|
      return false if mapped_area[i-1+ii][j-1+3] != '.'
    end

    (0..3).each do |jj|
      return false if mapped_area[i-1+3][j-1+jj] != '.'
    end

    (5..8).each do |ii|
      return false if mapped_area[i-1+ii][j-1+5] != '.'
    end

    (5..8).each do |jj|
      return false if mapped_area[i-1+5][j-1+jj] != '.'
    end
  end
end

n, m = gets.split.map(&:to_i)
mapped_area = []
n.times do
  mapped_area << gets.chomp.chars
end

(1..n-8).each do |i|
  (1..m-8).each do |j|
    puts "#{i} #{j}" if Checker.check(mapped_area, i, j)
  end
end
