class AddInitialAdmin < ActiveRecord::Migration
  def up
    Admin.create(email: "contact@lesocialmarket.fr", password: ENV['ADMIN_PASSWORD'])
  end
 
  def down
    Admin.delete_all
  end
end
