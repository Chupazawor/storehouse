class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false,  limit: 20
      t.string :last_name,  null: false,  limit: 20
      t.string :email,                    limit: 50

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
