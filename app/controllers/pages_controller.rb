class PagesController < ApplicationController
  def index
    @mail = Landing.new
  end
end
