n = gets.to_i
array = gets.split.map(&:to_i)

count = 1
before = 0
tmp_counter = 0
status = "even"
array.each.with_index do |num, i|
  if tmp_counter == 0
    tmp_counter += 1
  elsif tmp_counter == 1
    status =
      if before == num
        "even"
      elsif num < before
        "decrease"
      else
        "increase"
      end
    tmp_counter += 1
  else
    if (status == "decrease" && num > before) || (status == "increase" && num < before)
      count += 1
      tmp_counter = 1
      status == "even"
    elsif status == "even" && num != before
      status =
        if before == num
          "even"
        elsif num < before
          "decrease"
        else
          "increase"
        end
      tmp_counter += 1
    else
      tmp_counter += 1
    end
  end
  before = num
end

puts count