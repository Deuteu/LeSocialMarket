class LeadsController < ApplicationController
  def create
    @lead = Lead.new lead_param
    if @lead.save
      redirect_to root_path, notice: "Adresse sauvegardée"
    else
      redirect_to root_path, alert: "Echec de la sauvegarde"
    end
  end

  private
  def lead_param
    params.require(:lead).permit(:mail)
  end
end
