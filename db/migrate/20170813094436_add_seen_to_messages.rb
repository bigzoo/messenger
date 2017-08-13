class AddSeenToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :seen, :boolean, default: false
    add_column :messages, :hint, :string
  end
end
