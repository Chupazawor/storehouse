class CreateUserProfile < ActiveRecord::Migration[7.2]
  def change
    create_table :user_profiles do |t|
      t.string :address
      t.integer :phone_number

      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
