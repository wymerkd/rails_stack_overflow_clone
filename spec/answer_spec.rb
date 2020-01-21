require 'rails_helper'

describe Answer, type: :model do
  it { should belong_to :user }
  it { should belong_to :question }
end
