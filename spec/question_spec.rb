require 'rails_helper'

describe Question, type: :model do
  it { should belong_to :user }
  it { should have_many :answers }
end
