require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['tc.rb']
  t.verbose = true
end