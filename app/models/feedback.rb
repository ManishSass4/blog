class Feedback < ApplicationRecord
  belongs_to :counsellor
  belongs_to :customer
end
