require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :name => "MyString",
      :contact_person => "MyString",
      :contact_tel => "MyString"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", clients_path, "post" do
      assert_select "input#client_name[name=?]", "client[name]"
      assert_select "input#client_contact_person[name=?]", "client[contact_person]"
      assert_select "input#client_contact_tel[name=?]", "client[contact_tel]"
    end
  end
end
