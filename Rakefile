# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"
require 'ffi-compiler/compile_task'

task :compile do
  FFI::Compiler::CompileTask.new('webview-ext') do |c|
    c.cxxflags << "-std=c++11"
    c.ldflags << "-framework WebKit"
  end
end


Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

task :test => :compile

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[test rubocop]
