class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :middle_initial, :string
    add_column :users, :surname, :string
  end
end
