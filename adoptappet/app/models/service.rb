class Service < ActiveRecord::Base
  validates :name, :address, :phone, :email, presence:true
  validates :name, :uniqueness => true
end
