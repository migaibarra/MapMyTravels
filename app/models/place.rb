class Place < ActiveRecord::Base
  validates :name, presence: true
  validates :country, presence: true

  has_many :visitors, through: :users_places, source: User
  has_many :hometown_people, class_name: User
  has_many :citizens, class_name: User
end
