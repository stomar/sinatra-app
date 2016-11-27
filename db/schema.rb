require_relative "../app"

DB.create_table?(:items) do
  primary_key  :id
  String       :name
  Time         :created_at
end
