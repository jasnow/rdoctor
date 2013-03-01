#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'
require 'bundler'
Bundler::GemHelper.install_tasks

require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Rake::TestTask.new do |t|
  t.libs << 'lib/rdoctor'
  t.test_files = FileList['test/lib/rdoctor/*_test.rb']
  t.verbose = true
end

desc "Run all cukes in features/"
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

task :default => [:test, :features]

