require 'benchmark_driver'

Benchmark.driver do |x|
  x.prelude <<~RUBY
    s1 = "str1"
    s2 = "str2"
  RUBY

  x.report %q{ _a = s1 + s2 }
  x.report %q{ _b = "#{s1}#{s2}" }
end
