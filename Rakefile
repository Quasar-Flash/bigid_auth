#!/usr/bin/env rake
# frozen_string_literal: true

begin
  require "bundler/setup"
rescue LoadError
  puts "You must `gem install bundler` and `bundle install` to run rake tasks"
***REMOVED***

begin
  require "rdoc/task"
rescue LoadError
  require "rdoc/rdoc"
  require "rake/rdoctask"

  RDoc::Task = Rake::RDocTask
***REMOVED***

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = "rdoc"
  rdoc.title    = "bigid_auth"
  rdoc.options << "--line-numbers"
  rdoc.rdoc_files.include("README.rdoc")
  rdoc.rdoc_files.include("lib/**/*.rb")
***REMOVED***

Bundler::GemHelper.install_tasks

begin
  require "rake/testtask"
  require "rubocop/rake_task"

  RuboCop::RakeTask.new(:rubocop) do |t|
    t.options = ["--display-cop-names"]
  ***REMOVED***
rescue LoadError
  # no rspec available
***REMOVED***

begin
  require "rspec/core/rake_task"

  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
  # no rspec available
***REMOVED***

task default: %i[rubocop spec]
