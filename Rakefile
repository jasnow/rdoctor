#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'

require 'rubygems'
require 'cucumber/rake/task'

Rake::TestTask.new do |t|
  t.libs << 'lib/rdoctor'
  t.test_files = FileList['test/lib/rdoctor/*_test.rb']
  t.verbose = true
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty" # Any valid command line option can go here.
end

task :default => :test


