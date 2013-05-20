class ChangeDateFormat < ActiveRecord::Migration
  def up
  	change_column :orders, :target_date, :date
  	change_column :orders, :start_date, :date
  end

  def down
  	change_column :orders, :target_date, :datetime
  	change_column :orders, :start_date, :datetime
  end
end
