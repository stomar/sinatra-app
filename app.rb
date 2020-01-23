# frozen_string_literal: true

require "sinatra/base"

require_relative "db/connection"
# require_relative "lib/model"


# The application class.
class App < Sinatra::Base

  get "/" do
    @count = DB[:items].count

    erb :index
  end
end
