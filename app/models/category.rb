class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :services
  has_many :projects
  has_many :users, :through => :services
end
