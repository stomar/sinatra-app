# frozen_string_literal: true

require_relative "helper"


describe "Item" do

  before do
    setup_database
  end

  after do
    teardown_database
  end

  it "has an attribute :name" do
    id = create_item

    _(DB[:items].where(id: id).get(:name)).wont_be_nil
  end

  it "has an attribute :created_at" do
    id = create_item

    _(DB[:items].where(id: id).get(:created_at)).wont_be_nil
  end

  it "can store a :name value" do
    id = create_item(name: "test_item")

    _(DB[:items].where(id: id).get(:name)).must_equal "test_item"
  end

  it "can store a :created_at value" do
    id = create_item(created_at: Time.new(2000, 1, 1))

    _(DB[:items].where(id: id).get(:created_at).year).must_equal 2000
  end

  it "can be found by name if existing" do
    create_item(name: "test_item")

    _(DB[:items].where(name: "test_item").count).must_equal 1
  end
end
