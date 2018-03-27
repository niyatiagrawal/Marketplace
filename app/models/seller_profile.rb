class SellerProfile < ApplicationRecord
  belongs_to :user
  has_many :products

  # <Niyati add the belwo when the address isnt correct
  validates :address, :suburb, :state, :postcode, :country, presence: true

  after_validation :geocode
  geocoded_by :full_address

  # <Niyati - added the belwo code to call uploaded and to define where the attribute needs to be uploaded i.e. the image urlo

  mount_uploader :logo, SellerProfileLogoUploader

  # Niyati - the below is to get slug name for the seller user
  extend FriendlyId
  friendly_id :name, use: :slugged

  def full_address
    [address, suburb, state, postcode, country].join(', ')
  end

end
