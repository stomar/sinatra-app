# frozen_string_literal: true

require "minitest/autorun"
require "rack/test"

ENV["RACK_ENV"] = "test"

require_relative "../db/schema"
# require_relative "../db/models"
require_relative "../app"


def setup_database
  load File.expand_path("../db/seeds.rb", __dir__)
end

def teardown_database
  DB.tables.each {|table| DB[table].delete }
end

def create_item(attributes = {})
  defaults = {
    name: "default",
    created_at: Time.now
  }

  DB[:items].insert(defaults.merge(attributes))
end
