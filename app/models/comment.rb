class Comment < ApplicationRecord
  validates :body, presence: true
  
  belongs_to :task
  has_many_attached :files
end
