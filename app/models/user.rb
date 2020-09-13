class User < ApplicationRecord

  #  Encrypt
  has_secure_password

  has_many :bins, foreign_key: :created_by

  validates_presence_of :name, :email, :password_digest
end
