class PrimeChecker
  def self.prime?(num)
    i = 2
    result = true
    while i ** 2 <= num do
      result = num % i != 0

      break if !result
      i += 1
    end

    result
  end
end

num = gets.to_i
result = false
while true do
  result = PrimeChecker.prime?(num)
  break if result
  num += 1
end
puts num

