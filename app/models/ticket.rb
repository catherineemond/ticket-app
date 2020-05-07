class Ticket < ApplicationRecord
  validates_presence_of :name, :body, :status
  validates :status, inclusion: { in: %w(new blocked in_progress fixed),
    message: "%{value} is not a valid status" }
  belongs_to :project
  belongs_to :user
  has_many :comments
  has_many :ticket_tags
  has_many :tags, through: :ticket_tags
end
