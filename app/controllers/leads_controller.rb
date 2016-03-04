class LeadsController < ApplicationController
  def index
    @lead = Lead.new
    @mails = Lead.all
    render layout: false
  end
  def create
    @lead = Lead.new lead_param
    if @lead.save
      redirect_to "#", notice: "Adresse sauvegardée"
    else
      redirect_to "#", alert: "Echec de la sauvegarde"
    end
  end

  private
  def lead_param
    params.require(:lead).permit(:mail)
  end
end
