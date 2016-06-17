require 'rake/testtask'
  
Rake::TestTask.new do |task|
  task.libs << %w(test lib)
  task.pattern = 'test/*_test.rb'
end
  
task :default => :test

task :bench do
  Dir.glob('test/*_bench.rb') do |benchmark|
    ruby "-I lib -I test #{benchmark}"
  end  
end
