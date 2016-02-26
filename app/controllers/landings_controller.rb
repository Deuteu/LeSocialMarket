class LandingsController < ApplicationController
  def create
    @mail = Landing.new
  end
  def index
    @mail = Landing.new
  end
end
