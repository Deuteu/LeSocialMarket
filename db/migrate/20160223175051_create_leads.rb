class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :mail

      t.timestamps null: false
    end
  end
end
