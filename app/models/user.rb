require 'bcrypt'

class User < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Not the proper email format!" }
  validates :password_hash, presence: true

  has_many :places, through: :users_places
  belongs_to :place, foreign_key: :hometown_id
  belongs_to :place, foreign_key: :currently_living_id

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.login(email, password)
    user = User.find_by_email(email)
    if user.password == password
      return user
    else
      nil
    end
  end
end
