require 'spec_helper'

describe "visits/index" do
  before(:each) do
    assign(:visits, [
      stub_model(Visit,
        :visit_type => "Visit Type",
        :user_id => 1,
        :desc => "MyText"
      ),
      stub_model(Visit,
        :visit_type => "Visit Type",
        :user_id => 1,
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of visits" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Visit Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
