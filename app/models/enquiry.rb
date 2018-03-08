class Enquiry < ApplicationRecord
# <Niyati - we want to make sure they shoudl put ijn the below details to be able to submit>
  validates :name, :email, :message, presence: true

end
