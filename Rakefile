require 'bundler'
require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require 'spam_email/list_compiler'

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
end

desc "Compile provider list"
task :compile do |t|
  SpamEmail::ListCompiler.compile_list
end


task :default => [:spec]
task :build => [:spec]
