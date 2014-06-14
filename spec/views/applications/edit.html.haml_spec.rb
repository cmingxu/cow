require 'spec_helper'

describe "applications/edit" do
  before(:each) do
    @application = assign(:application, stub_model(Application,
      :name => "MyString",
      :client_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", application_path(@application), "post" do
      assert_select "input#application_name[name=?]", "application[name]"
      assert_select "input#application_client_id[name=?]", "application[client_id]"
      assert_select "textarea#application_description[name=?]", "application[description]"
    end
  end
end
