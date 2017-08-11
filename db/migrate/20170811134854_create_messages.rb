class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :message
      t.integer :sender_id
      t.boolean :favorite

      t.timestamps
    end
    add_index :messages, :user_id
    change_column :messages, :favorite, :boolean, :default => false
  end
end
