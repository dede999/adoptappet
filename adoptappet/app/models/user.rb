class User < ActiveRecord::Base
  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
