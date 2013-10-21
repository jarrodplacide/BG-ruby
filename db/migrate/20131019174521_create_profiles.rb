class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :displayname
      t.string :gender
      t.date :dob
      t.text :about
      t.integer :user_id

      t.timestamps
    end
  end
end
