class Place < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true

  geocoded_by :address
  after_validation :geocode

  belongs_to :user
  has_many :photos
  has_many :comments
end
