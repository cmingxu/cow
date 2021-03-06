require 'spec_helper'

describe "passenger_records/index" do
  before(:each) do
    assign(:passenger_records, [
      stub_model(PassengerRecord,
        :route_id => 1
      ),
      stub_model(PassengerRecord,
        :route_id => 1
      )
    ])
  end

  it "renders a list of passenger_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
