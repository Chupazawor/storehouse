class CreateStore < ActiveRecord::Migration[7.2]
  def change
    create_table :stores do |t|
      t.timestamps
      t.string :store_name
      t.string :description
      t.jsonb :working_hours
    end
  end
end
