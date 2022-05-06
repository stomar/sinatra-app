# frozen_string_literal: true

require "sequel"
require "sqlite3"

case env = ENV.fetch("RACK_ENV", "development")
when "test"
  DB = Sequel.sqlite
when "development", "production"
  file = File.expand_path("#{env}.db", __dir__)
  DB = Sequel.connect(ENV.fetch("DATABASE_URL", "sqlite:///#{file}"))
end
