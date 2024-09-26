class HomeController < ApplicationController
  def index
    @house = House.all
  end
end
