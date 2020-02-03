# frozen_string_literal: true

require "sinatra/base"

# require_relative "lib/helper"

require_relative "db/connection"
# require_relative "db/models"


# The application class.
class App < Sinatra::Base

  get "/" do
    @count = DB[:items].count

    erb :index
  end
end
