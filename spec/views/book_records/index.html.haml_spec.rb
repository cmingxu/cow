require 'spec_helper'

describe "book_records/index" do
  before(:each) do
    assign(:book_records, [
      stub_model(BookRecord,
        :client_id => 1,
        :user_id => 2,
        :project_id => 3,
        :department_id => "Department",
        :price => 1.5
      ),
      stub_model(BookRecord,
        :client_id => 1,
        :user_id => 2,
        :project_id => 3,
        :department_id => "Department",
        :price => 1.5
      )
    ])
  end

  it "renders a list of book_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
