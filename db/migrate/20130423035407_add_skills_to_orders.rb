class AddSkillsToOrders < ActiveRecord::Migration
  def change
  	 add_column :orders, :skills, :text
  end
end
