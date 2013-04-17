class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :year, :integer
    add_column :users, :course, :string
    add_column :users, :school, :string
    add_column :users, :organization, :array
    add_column :users, :category_id, :integer
  end
end
