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
      t.date :target_date
      t.date :start_date
      t.integer :number_of_workers
      t.integer :service_id

      t.timestamps
    end
  end
end
