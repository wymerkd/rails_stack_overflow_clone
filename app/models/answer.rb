class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :user_id, :question, :presence => true


end
