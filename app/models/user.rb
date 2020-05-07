class User < ApplicationRecord
  validates_presence_of :name, :email, :password
  has_many :tickets
  has_many :comments
end