require 'benchmark'

Benchmark.bm 10 do |r|
  array = [2, 3, 4, 55, 900, 100, 32, 2, 3, 4, 55, 900, 100, 322, 3, 4, 55, 900, 100, 32]
  r.report "count" do
    array.count {|n| n % 2 == 0} == 7
  end

  r.report "all" do
    array.all?(&:even?)
  end
end
