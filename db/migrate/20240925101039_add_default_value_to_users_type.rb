class AddDefaultValueToUsersType < ActiveRecord::Migration[7.2]
  def change
    change_column :users, :type, :string, null: false, default: 'User'
  end
end
