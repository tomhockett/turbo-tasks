class Task < ApplicationRecord
  validates :title, presence: true

  scope :completed, -> { where("completed_at IS NOT NULL") }
end
