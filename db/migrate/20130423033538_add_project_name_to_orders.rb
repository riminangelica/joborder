class AddProjectNameToOrders < ActiveRecord::Migration
  def change
  	 add_column :orders, :project_name, :string
  	 add_column :orders, :project_description, :text
  end
end
