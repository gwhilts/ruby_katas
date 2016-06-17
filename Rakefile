require 'rake/testtask'
  
Rake::TestTask.new do |task|
  task.libs << %w(test lib)
  task.pattern = 'test/*_test.rb'
end
  
task :default => :test

task :bench do
  Dir.glob('test/*_bench.rb') do |benchmark|
    puts "\nRunning..."
    ruby "-I lib -I test #{benchmark}"
    puts "\n\n#{'-' * 8}\n"
  end  
end
