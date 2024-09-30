class CreateProduct < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.timestamps
      t.string :model
      t.string :article
      t.string :description
      t.integer :price
      t.integer :quantity
    end
  end
end
