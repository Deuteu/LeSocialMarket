class LeadsController < ApplicationController
  def create
    @lead = Lead.new lead_param
    if @lead.save
      redirect_to root_path, notice: "Adresse sauvegardée"
    else
      if @lead.errors.include?(:mail)
        redirect_to root_path, alert: "Echec de la sauvegarde"
      end
    end
  end

  private
  def lead_param
    params.require(:lead).permit(:mail)
  end
end
