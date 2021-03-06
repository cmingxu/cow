require 'spec_helper'

describe "visits/new" do
  before(:each) do
    assign(:visit, stub_model(Visit,
      :visit_type => "MyString",
      :user_id => 1,
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new visit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visits_path, "post" do
      assert_select "input#visit_visit_type[name=?]", "visit[visit_type]"
      assert_select "input#visit_user_id[name=?]", "visit[user_id]"
      assert_select "textarea#visit_desc[name=?]", "visit[desc]"
    end
  end
end
