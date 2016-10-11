class Service < ActiveRecord::Base
  validate :name, :address, :phone, :email, presence:true
  validate :name, :uniqueness => true
end
