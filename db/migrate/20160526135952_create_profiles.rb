class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :lname
      t.attachment :avatar
      t.string :about

      t.timestamps null: false
    end
  end
end
