class Customer < ApplicationRecord
  require "securerandom"
  has_secure_password

  validates :password, presence: true
  validates :username, presence: true, uniqueness: true


  has_many :appoints
  has_many :counsellors, through: :appoints
end
