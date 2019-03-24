# frozen_string_literal: true

require_relative "helper"


describe "database" do

  before do
    setup_database
  end

  after do
    teardown_database
  end

  it "does find an existing item" do
    create_item(name: "a_test_item")

    DB[:items].where(name: "a_test_item").count.must_equal 1
  end

  it "does not find a nonexisting item" do
    DB[:items].where(name: "not_an_item").count.must_equal 0
  end
end
