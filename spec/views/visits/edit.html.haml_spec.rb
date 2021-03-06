require 'spec_helper'

describe "visits/edit" do
  before(:each) do
    @visit = assign(:visit, stub_model(Visit,
      :visit_type => "MyString",
      :user_id => 1,
      :desc => "MyText"
    ))
  end

  it "renders the edit visit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visit_path(@visit), "post" do
      assert_select "input#visit_visit_type[name=?]", "visit[visit_type]"
      assert_select "input#visit_user_id[name=?]", "visit[user_id]"
      assert_select "textarea#visit_desc[name=?]", "visit[desc]"
    end
  end
end
