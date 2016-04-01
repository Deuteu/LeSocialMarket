class InitiatePaymentMethod < ActiveRecord::Migration
  def up
    # Add stipe methode
    if not Spree::PaymentMethod.find_by(type: "Spree::Gateway::StripeGateway")
      Spree::PaymentMethod.create("type"=>"Spree::Gateway::StripeGateway",
        "display_on"=>"", "auto_capture"=>"",
        "active"=>"true", "name"=>"Carte bancaire",
        "description"=>"",
        "preference_source"=>nil,
        "preferences"=>{
          "server"=>"test",
          "test_mode"=>false,
          "secret_key"=>ENV["SECRET_KEY_STRIPE"],
          "spublishable_key"=>ENV["PUBLISHABLE__KEY_STRIPE"]
        }
      )
    end
    # Desactive
    sc = Spree::PaymentMethod.find_by(type: "Spree::PaymentMethod::StoreCredit")
    sc.active = false
    sc.save
  end

  def down
    # Delete
    if Spree::PaymentMethod.find_by(type: "Spree::Gateway::StripeGateway")
      Spree::PaymentMethod.find_by(type: "Spree::Gateway::StripeGateway").first.delete
    end
    # Reactive
    sc = Spree::PaymentMethod.find_by(type: "Spree::PaymentMethod::StoreCredit")
    sc.active = true
    sc.save
  end
end
