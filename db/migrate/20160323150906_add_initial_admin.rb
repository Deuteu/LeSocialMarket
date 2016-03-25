class AddInitialAdmin < ActiveRecord::Migration
  def up
    psswd = ENV['ADMIN_PASSWORD'].nil? ? "admin123" : ENV['ADMIN_PASSWORD']
    Admin.create(email: "contact@lesocialmarket.fr", password: ENV['ADMIN_PASSWORD'])
  end
 
  def down
    Admin.delete_all
  end
end
