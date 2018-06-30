# frozen_string_literal: true

require_relative "helper"


describe "application" do
  include Rack::Test::Methods

  def app
    App
  end

  before do
    setup_database
  end

  after do
    teardown_database
  end

  it "shows the root page" do
    get "/"
    last_response.status.must_equal 200
    last_response.body.must_match %r{Sinatra Application}
  end
end
