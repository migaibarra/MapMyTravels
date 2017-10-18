class Place < ActiveRecord::Base
  validates :name, presence: true
  validates :country, presence: true

  has_many :visits, through: :visits, source: User
  has_many :hometown_people, class_name: User
  has_many :citizens, class_name: User
end
