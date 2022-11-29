class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :birthday, :date, null: false
    add_column :users, :role, :boolean, default: false, null: false
    add_column :users, :score, :integer, default: 0
  end
end
