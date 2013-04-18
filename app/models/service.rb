class Service < ActiveRecord::Base
  attr_accessible :name

  belongs_to :category
  belongs_to :user
  has_many :orders

  def self.values_for_select
    # services = []

    # Service.all.each do |service|
    #   services << [service.name, service.id.to_s]
    # end

    # services

    services = ""

    Service.all.each do |service|
      services += "<option value=#{service.id}>#{service.name}</option>"
    end

    services
  end
end
