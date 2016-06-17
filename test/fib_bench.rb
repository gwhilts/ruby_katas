require 'benchmark_helper'
require 'fib'

title "Fib.fib"

Benchmark.bm(5) do |b|
  b.report('100:') { Fib.fib 100 }
  b.report('1k:') { Fib.fib 1000 }
  b.report('10k:') { Fib.fib 10_000 }
  b.report('100k:') { Fib.fib 100_000 }
  b.report('1M:') { Fib.fib 1_000_000 }
end  
