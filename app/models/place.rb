class Place < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 4 }
  validates :address, presence: true
  validates :description, presence: true

  belongs_to :user
end
