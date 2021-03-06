
class Order < ActiveRecord::Base
  attr_accessible :aesthetics, :category_id, :email, :first_name, :mobile, :number_of_workers, 
  								:start_date, :status, :surname, :target_date, :technicalities, :user_id, 
  								:project_name, :project_description, :skills,
  								:image, :remote_image_url, :image_cache

  belongs_to :category
  belongs_to :user
  #belongs_to :project

  mount_uploader :image, ImageUploader

end
