require 'spec_helper'

describe "huxings/index" do
  before(:each) do
    assign(:huxings, [
      stub_model(Huxing,
        :name => "Name",
        :client_id => 1,
        :created_by => 2,
        :desc => "MyText"
      ),
      stub_model(Huxing,
        :name => "Name",
        :client_id => 1,
        :created_by => 2,
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of huxings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
