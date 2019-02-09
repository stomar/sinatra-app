# frozen_string_literal: true

require_relative "../app"

seeds = {}

seeds[:items] = [
  { name: "Item 1", created_at: Time.now },
  { name: "Item 2", created_at: Time.now }
]

DB.transaction do
  seeds.each_key do |table|
    seeds[table].each {|row| DB[table].insert(row) }  if DB[table].empty?
  end
end
