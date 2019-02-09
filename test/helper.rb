# frozen_string_literal: true

require "minitest/autorun"
require "rack/test"

ENV["RACK_ENV"] = "test"
require_relative "../app"


def setup_database
  load File.expand_path("../db/schema.rb", __dir__)
  load File.expand_path("../db/seeds.rb", __dir__)
  load File.expand_path("fixtures.rb", __dir__)
end

def teardown_database
  DB.drop_table(*DB.tables)
end
