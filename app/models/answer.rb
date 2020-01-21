class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :user_id, :question, :presence => true
  scope :three_highest_rated, -> { order(rating: :desc).limit(3)}
end
