class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  belongs_to :user
  validates :user_id, :question_content, :presence => true
end
