require 'spec_helper'

describe "applications/new" do
  before(:each) do
    assign(:application, stub_model(Application,
      :name => "MyString",
      :client_id => 1,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", applications_path, "post" do
      assert_select "input#application_name[name=?]", "application[name]"
      assert_select "input#application_client_id[name=?]", "application[client_id]"
      assert_select "textarea#application_description[name=?]", "application[description]"
    end
  end
end
