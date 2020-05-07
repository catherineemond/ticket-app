class Comment < ApplicationRecord
  validates_presence_of :body, :ticket_id, :user_id
  belongs_to :ticket
  belongs_to :user
end