class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :mobile
      t.text :technicalities
      t.text :aesthetics
      t.string :status
      t.datetime :target_date
      t.datetime :start_date
      t.integer :number_of_workers
      
      t.timestamps
    end
  end
end
