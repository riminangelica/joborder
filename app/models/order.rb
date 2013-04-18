class Order < ActiveRecord::Base
  attr_accessible :aesthetics, :category_id, :email, :first_name, :mobile, :number_of_workers, :service_id, :start_date, :status, :surname, :target_date, :technicalities, :user_id

  belongs_to :category
  belongs_to :user
  belongs_to :service
end
