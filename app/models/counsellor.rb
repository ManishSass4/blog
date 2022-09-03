class Counsellor < ApplicationRecord
  require "securerandom"

  has_secure_password

  validates :password, presence: true
  validates :username, presence: true, uniqueness: true

  has_one :feedback, through: :customer
  has_many :appoints
  has_many :customers, through: :appoints
end
