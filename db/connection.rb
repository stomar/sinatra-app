# frozen_string_literal: true

require "sequel"
require "sqlite3"

case env = ENV["RACK_ENV"] || "development"
when "test"
  DB = Sequel.sqlite
when "development", "production"
  file = File.expand_path("#{File.dirname(__FILE__)}/#{env}.db")
  DB = Sequel.connect(ENV["DATABASE_URL"] || "sqlite:///#{file}")
end
