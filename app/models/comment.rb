class Comment < ApplicationRecord
  validates :message, presence: true
  belongs_to :stock
end
