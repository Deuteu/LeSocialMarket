class LeadsController < ApplicationController
before_action :authenticate_admin!, only: [:index]

  def index
    @leads = Lead.all
  end

  def create
    @lead = Lead.new lead_param
    if @lead.save
      redirect_to root_path, nl_success: "Adresse sauvegardée"
    else
      if @lead.errors.include?(:mail)
        redirect_to root_path, nl_failed: "Echec de la sauvegarde"
      end
    end
  end

  private
  def lead_param
    params.require(:lead).permit(:mail)
  end
end
