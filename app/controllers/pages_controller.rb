class PagesController < ApplicationController
  def landing
    @lead = Lead.new
    render layout: false
  end
end
