fixtures = Hash.new

fixtures[:items] = [
  { name: "item_one", created_at: Time.now },
  { name: "item_two", created_at: Time.now }
]

fixtures.each_key do |table|
  fixtures[table].each {|row| DB[table].insert(row) }
end
