class Doctor < ActiveRecord::Base
  attr_accessible :email, :family, :name, :password, :pid, :password_confirmation
  has_secure_password
  validates :name, presence: true, length: { maximum: 50 }
  validates :family, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates :pid, presence: true, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }


end