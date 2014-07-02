require 'spec_helper'

describe "Huxings" do
  describe "GET /huxings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get huxings_path
      response.status.should be(200)
    end
  end
end
