class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|
      t.string :mail

      t.timestamps null: false
    end
  end
end
