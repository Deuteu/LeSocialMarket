class AddInitialShopAdmin < ActiveRecord::Migration
  def up
    def create_admin_user
      password = ENV['ADMIN_PASSWORD'].nil? ? "admin123" : ENV['ADMIN_PASSWORD']
      email = "contact@lesocialmarket.fr"
      attributes = {
        :password => password,
        :password_confirmation => password,
        :email => email,
        :login => email
      }

      load 'spree/user.rb'

      role = Spree::Role.find_or_create_by(name: 'admin')

      if Spree::User.find_by_email(email)
        user = Spree::User.find_by_email(email)
        if not user.spree_roles.include?(role)
          user.spree_roles << role
          user.save
          user.generate_spree_api_key!
        end
      else
        admin = Spree::User.new(attributes)
        if admin.save
          admin.spree_roles << role
          admin.save
          admin.generate_spree_api_key!
        else
          admin.errors.full_messages.each do |error|
            say error
          end
        end
      end
    end

    create_admin_user
  end
  
  def down
    Spree::User.delete_all
  end
end