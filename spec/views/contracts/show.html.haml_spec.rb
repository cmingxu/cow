require 'spec_helper'

describe "contracts/show" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :name => "Name",
      :added_by_id => 1,
      :code => "Code",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Code/)
    rendered.should match(/MyText/)
  end
end
