class Place < ActiveRecord::Base
  validates :name, presence: true
  validates :country, presence: true

  has_many :users, through: :users_places
  has_many :hometown_people, class_name: User
  has_many :citizens, class_name: User
end
