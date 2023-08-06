n, m, x = gets.split.map(&:to_i)
ryoukinjo = gets.split.map(&:to_i)

zenhan = ryoukinjo.select { |ele| ele < x }

puts zenhan.length * 2 <= ryoukinjo.length ? zenhan.length : ryoukinjo.length - zenhan.length