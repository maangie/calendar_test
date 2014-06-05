require 'rails_helper'

RSpec.describe AvailabilityController, :type => :controller do

  describe "GET 'get'" do
    it "returns http success" do
      get 'get'
      expect(response).to be_success
    end
  end

end
