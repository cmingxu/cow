require 'spec_helper'

describe "departments/index" do
  before(:each) do
    assign(:departments, [
      stub_model(Department,
        :name => "Name",
        :size => 1.5,
        :chaoxiang => "Chaoxiang",
        :client_id => 1,
        :project_id => 2,
        :created_by => 3
      ),
      stub_model(Department,
        :name => "Name",
        :size => 1.5,
        :chaoxiang => "Chaoxiang",
        :client_id => 1,
        :project_id => 2,
        :created_by => 3
      )
    ])
  end

  it "renders a list of departments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Chaoxiang".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
