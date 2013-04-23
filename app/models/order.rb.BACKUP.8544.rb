class Order < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :skills, :project_description, :project_name, :aesthetics, :category_id, :email, :first_name, :mobile, :number_of_workers, :service_id, :start_date, :status, :surname, :target_date, :technicalities, :user_id
=======
  attr_accessible :aesthetics, :category_id, :email, :first_name, :mobile, :number_of_workers, :start_date, :status, :surname, :target_date, :technicalities, :user_id
>>>>>>> d772ed4c6eae1c8055d49fc732db8495c893e5ab

  belongs_to :category
  belongs_to :user
  #belongs_to :project
end
