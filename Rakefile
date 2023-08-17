# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks
begin
  require "rubocop/rake_task"
  require "rspec/core/rake_take"


  task default: %i[rubocop spec]

  desc "Run rubocop"
  task :rubocop do
    RuboCop::RakeTask.new
  end

  desc "Run all rspec"
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.ruby_opts = %w[-w]
  end
rescue LoadError # No rubocop or rspec.
end
