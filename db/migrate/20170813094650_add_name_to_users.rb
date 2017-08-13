class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :public_profile, :boolean, default: true
    add_column :users, :public_messages, :boolean, default: true
  end
end
