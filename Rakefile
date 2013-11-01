require "bundler/gem_tasks"

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

task :default => [:spec]
task :build => [:spec]
