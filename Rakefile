# frozen_string_literal: true

require "rake/testtask"

task :default => [:test]

Rake::TestTask.new do |t|
  t.pattern = "test/**/test_*.rb"
  t.verbose = true
  t.warning = false
end

desc "Serve the application"
task :serve do
  exec "bundle exec rackup config.ru"
end

namespace :db do
  desc "Create the database and load the seed data"
  task :setup => [:create, :seed]

  desc "Create the database"
  task :create do
    ruby "./db/schema.rb"
  end

  desc "Load the seed data"
  task :seed do
    ruby "./db/seeds.rb"
  end

  desc "Print out the database content"
  task :dump do
    require_relative "app"

    DB.tables.each do |table|
      puts "#{table}:"
      DB[table].each {|row| puts row }
    end
  end
end
