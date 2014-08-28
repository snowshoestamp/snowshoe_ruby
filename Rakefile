require "bundler/gem_tasks"
require "rake/testtask"
Dir.glob('tasks/**/*.rake').each(&method(:import))

Rake::TestTask.new do |t|
	t.libs << 'test'
end

desc "Run tests"
task :default => :test