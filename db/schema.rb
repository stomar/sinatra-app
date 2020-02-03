# frozen_string_literal: true

require_relative "connection"

unless DB.tables.empty?
  warn "Database does already have tables. Not loading schema."
  exit 1
end

DB.create_table(:items) do
  primary_key :id
  String :name
  Time :created_at
end
