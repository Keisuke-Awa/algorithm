require 'matrix'

ax, ay = gets.split.map(&:to_i)
bx, by = gets.split.map(&:to_i)
cx, cy = gets.split.map(&:to_i)

vector_ba = Vector[ax - bx, ay - by]
vector_bc = Vector[cx - bx, cy - by]
vector_ca = Vector[ax - cx, ay - cy]
vector_cb = Vector[bx - cx, by - cy]

# 内積の計算
if vector_bc.inner_product(vector_ba) <= 0
  puts Math.sqrt((ax - bx) ** 2 + (ay - by) ** 2)
elsif vector_cb.inner_product(vector_ca) <= 0
  puts Math.sqrt((ax - cx) ** 2 + (ay - cy) ** 2)
else
  puts (vector_bc[0] * vector_ba[1] - vector_bc[1] * vector_ba[0]).abs / Math.sqrt((cx - bx) ** 2 + (cy - by) ** 2)
end
