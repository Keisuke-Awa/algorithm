x1, y1, x2, y2 = gets.split.map(&:to_i)

kyori = (x1 - x2)**2 + (y1 - y2)**2
p kyori
p Math::PI