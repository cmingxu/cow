require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :name => "Name",
        :contact_person => "Contact Person",
        :contact_tel => "Contact Tel"
      ),
      stub_model(Client,
        :name => "Name",
        :contact_person => "Contact Person",
        :contact_tel => "Contact Tel"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Person".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Tel".to_s, :count => 2
  end
end
