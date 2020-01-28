# frozen_string_literal: true

require "minitest/autorun"
require "rack/test"

ENV["RACK_ENV"] = "test"

require_relative "../db/schema"
require_relative "../app"


def setup_database
  load File.expand_path("../db/seeds.rb", __dir__)
end

def teardown_database
  DB.tables.each {|table| DB[table].delete }
end

def create_item(attributes = {})
  default = {
    name: "item",
    created_at: Time.now
  }

  DB[:items].insert(default.merge(attributes))
end
