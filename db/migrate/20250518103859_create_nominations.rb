class CreateNominations < ActiveRecord::Migration[7.1]
  def change
    create_table :nominations do |t|
      t.string :organization_name, null: false
      t.string :nominee_name, null: false
      t.integer :nominee_age, null: false
      t.string :contact_number, null: false
      t.string :email, null: false
      t.text :correspondence_address
      t.string :firm_type
      t.references :user, foreign_key: true
      t.string :user_email
      t.timestamps
    end
  end
end
