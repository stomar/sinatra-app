# frozen_string_literal: true

require_relative "connection"

DB.create_table?(:items) do
  primary_key  :id
  String       :name
  Time         :created_at
end
