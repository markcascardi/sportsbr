class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :email, :password
  validates :email, uniqueness: true
  has_many :user_notes
  has_many :athletes, through: :user_notes
end
