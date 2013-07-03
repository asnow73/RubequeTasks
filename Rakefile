#task :default => [:test]
#
#task :test do
#  ruby "test/tests.rb"
#end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << ["test", "lib"]
  t.test_files = FileList['test/tests.rb']
  #t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

task :default => :test