class Ticket < ApplicationRecord
  validates_presence_of :name, :body, :status, :project_id
  validates :status, inclusion: { in: %w(new blocked in_progress fixed),
    message: "%{value} is not a valid status" }
end
