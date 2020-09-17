class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :age, :integer, null: false
    add_column :users, :metabolism, :integer
    add_column :users, :money, :integer
  end
end
