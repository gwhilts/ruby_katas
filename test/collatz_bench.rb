require 'benchmark_helper'
require 'collatz'

title 'Collatz.sequence_from'

Benchmark.bm(5) do |b|
  b.report('10k')  { Collatz.sequence_from 10_000 }
  b.report('100k') { Collatz.sequence_from 100_000 }
  b.report('1M')   { Collatz.sequence_from 1_000_000 }
end

