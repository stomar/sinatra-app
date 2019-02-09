# frozen_string_literal: true

require "sinatra/base"
require "sequel"
require "sqlite3"

# require_relative "lib/model"

case env = ENV["RACK_ENV"] || "development"
when "test"
  DB = Sequel.sqlite
when "development", "production"
  file = File.expand_path("#{File.dirname(__FILE__)}/db/#{env}.db")
  DB = Sequel.connect(ENV["DATABASE_URL"] || "sqlite:///#{file}")
end


# The application class.
class App < Sinatra::Base

  get "/" do
    @count = DB[:items].count

    erb :index
  end
end
