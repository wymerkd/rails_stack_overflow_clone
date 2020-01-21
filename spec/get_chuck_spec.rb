require 'rails_helper'

# describe Chuck, :vcr => true do
# end

describe Chuck do
  it "returns a joke when the API call is made" do
   response = Chuck.get_chuck
   expect(response).to_not(eq(nil))
 end
end
