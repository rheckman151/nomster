class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  # self.per_page = 2
  
  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true

end
