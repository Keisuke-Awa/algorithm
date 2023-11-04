a,b,c,d = gets.chomp.chars.map(&:to_i)
catch(:break_loop) do
  [:+, :-].each do |i|
    [:+, :-].each do |j|
      [:+, :-].each do |k|
        if a.send(i, b).send(j, c).send(k, d) == 7
          puts a.to_s + i.to_s + b.to_s + j.to_s + c.to_s + k.to_s + d.to_s + "=7"
          throw :break_loop
        end
      end
    end
  end
end
