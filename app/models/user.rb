class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :middle_initial, presence: true
  validates :last_name, presence: true
end
