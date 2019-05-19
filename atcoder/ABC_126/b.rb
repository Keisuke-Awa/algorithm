num = gets.chomp

result = ''
result = 'NA' if num.slice(0..1) == '00' && num.slice(2..3) == '00'

result =
  if (1..12).include? num.slice(0..1).to_i
    if (1..12).include? num.slice(2..3).to_i
      'AMBIGUOUS'
    else
      'MMYY'
    end
  else
    if (1..12).include? num.slice(2..3).to_i
      'YYMM'
    else
      'NA'
    end
  end

puts result