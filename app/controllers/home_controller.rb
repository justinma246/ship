class HomeController < ApplicationController
  def index
    @home_props = { test: 'Hello' }
  end
end
