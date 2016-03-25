class AdminsController < ApplicationController
  before_filter :authenticate_admin!
  def edit
    @admin = current_admin
  end

  def update_password
    @admin = Admin.find(current_admin.id)
    if @admin.update(admin_params)
      # Sign in the admin by passing validation in case their password changed
      sign_in @admin, :bypass => true
      redirect_to root_path
    else
      render "edit"
    end
  end

  private

  def admin_params
    # NOTE: Using `strong_parameters` gem
    params.require(:admin).permit(:password, :password_confirmation)
  end
end