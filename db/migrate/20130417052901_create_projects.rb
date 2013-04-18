class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.string :description
      t.string :project_link

      t.timestamps
    end
  end
end
