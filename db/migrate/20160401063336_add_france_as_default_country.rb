class AddFranceAsDefaultCountry < ActiveRecord::Migration
  def up
    c = Spree::Country.create_with(iso_name: "FRANCE", iso: "FR", iso3: "FRA").find_or_create_by(name:"France")
    Spree.config do |config|
      config.default_country_id = c.id
    end
  end
  def down
  end
end
