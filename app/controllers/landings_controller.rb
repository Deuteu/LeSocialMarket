class LandingsController < ApplicationController
  def index
    @mail = Landing.new
    @mails = Landing.all
    render layout: false
  end
  def create
    @mail = Landing.new landing_param
    if @mail.save
      redirect_to "#", notice: "Adresse sauvegardée"
    else
      redirect_to "#", alert: "Echec de la sauvegarde"
    end
  end

  private
  def landing_param
    params.require(:landing).permit(:mail)
  end
end
