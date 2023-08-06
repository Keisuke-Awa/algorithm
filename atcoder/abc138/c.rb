n = gets.to_i
materials = gets.split.map(&:to_i).sort

while materials.length != 1 do
  mate1 = materials[0]
  mate2 = materials[1]

  materials = materials[2..-1].unshift((mate1 + mate2) / 2.0)
end

puts materials[0]