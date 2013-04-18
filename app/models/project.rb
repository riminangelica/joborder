class Project < ActiveRecord::Base
  attr_accessible :category_id, :description, :project_link, :title, :user_id

  belongs_to :user
  belongs_to :category
  has_many :orders
end
