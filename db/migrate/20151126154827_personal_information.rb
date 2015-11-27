class PersonalInformation < ActiveRecord::Migration
  def change
    create_table :personal_informations do |t|
      t.string :name, null: false
      t.string :gender, null: false
      t.date :birth_date, null: false
      t.string :mail_address, null: false

      t.datetime :soft_destroyed_at
      t.timestamps null: false
    end
  end
end
