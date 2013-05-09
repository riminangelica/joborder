class Project < ActiveRecord::Base
  attr_accessible :image_cache, :category_id, :description, :project_link, :title, :user_id, :project_status, :image, :remove_image

  belongs_to :user
  belongs_to :category
  #has_many :orders

  mount_uploader :image, ImageUploader
end
