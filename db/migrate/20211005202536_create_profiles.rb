class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :plan_subscribed
      t.string :phone_number
      t.string :email
      t.string :custom_notes
      t.timestamps
    end
  end
end
