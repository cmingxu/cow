require 'spec_helper'

describe "huxings/new" do
  before(:each) do
    assign(:huxing, stub_model(Huxing,
      :name => "MyString",
      :client_id => 1,
      :created_by => 1,
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new huxing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", huxings_path, "post" do
      assert_select "input#huxing_name[name=?]", "huxing[name]"
      assert_select "input#huxing_client_id[name=?]", "huxing[client_id]"
      assert_select "input#huxing_created_by[name=?]", "huxing[created_by]"
      assert_select "textarea#huxing_desc[name=?]", "huxing[desc]"
    end
  end
end
