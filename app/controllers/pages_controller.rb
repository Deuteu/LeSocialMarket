class PagesController < ApplicationController
  def landing
    @lead = Lead.new
    render layout: false
  end
  def faq
    render layout: false
  end
  def cg
    render layout: false
  end
  def mentions
    render layout: false
  end
end
