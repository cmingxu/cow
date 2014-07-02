require 'spec_helper'

describe "huxings/show" do
  before(:each) do
    @huxing = assign(:huxing, stub_model(Huxing,
      :name => "Name",
      :client_id => 1,
      :created_by => 2,
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end
