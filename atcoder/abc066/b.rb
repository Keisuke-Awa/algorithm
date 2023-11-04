string = gets.chomp
length = string.length - 2

while true do
  string = string[0..length-1]

  zenhan = string[0..length/2-1]
  kouhan = string[length/2..-1]

  if zenhan == kouhan
    puts length
    break
  end

  length -= 2
end