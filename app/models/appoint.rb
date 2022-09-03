class Appoint < ApplicationRecord
  belongs_to :customer
  belongs_to :counsellor
  has_one :feedback, through: :customer
  has_one :advise, through: :counsellor
end


