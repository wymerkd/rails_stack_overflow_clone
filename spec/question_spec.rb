require 'rails_helper'

describe Question, type: :model do
  it { should belong_to :user }
  it { should have_many :answers }
  it ('should have content')do
    user = FactoryBot.create(:user)
    question = FactoryBot.create(:question, :user_id => user.id)
    expect question.question_content.should eq 'Knit the sock monkey?'
  end
end
