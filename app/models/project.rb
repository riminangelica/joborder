class Project < ActiveRecord::Base
  attr_accessible :category_id, :description, :project_link, :title, :user_id, :project_status

  belongs_to :user
  belongs_to :category
  #has_many :orders
end
