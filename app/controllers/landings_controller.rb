class LandingsController < ApplicationController
  def create
    @mail = Landing.new
  end
end
