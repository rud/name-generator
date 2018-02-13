# frozen_string_literal: true

require 'bundler/setup'
Bundler.setup
require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task default: :spec

desc 'Do what a CI server would do'
task ci: [:spec, 'test:rubocop']

namespace :test do
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new(:rubocop) do |task|
    # run with .rubocop.yml config:
    task.options = [
      '--config', '.rubocop.yml',
      '--fail-level', 'W'
    ]
    # only show the files with failures
    task.formatters = %w[clang offenses]
    # silence "Running RuboCop..." output:
    task.verbose = ENV['CI']
    # abort rake on failure
    task.fail_on_error = true
  end
end
