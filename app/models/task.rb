class Task < ApplicationRecord
  validates :description, presence: true

  belongs_to :project
  has_many :comments, dependent: :destroy
end
