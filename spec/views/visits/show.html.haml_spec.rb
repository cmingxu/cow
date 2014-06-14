require 'spec_helper'

describe "visits/show" do
  before(:each) do
    @visit = assign(:visit, stub_model(Visit,
      :visit_type => "Visit Type",
      :user_id => 1,
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Visit Type/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
