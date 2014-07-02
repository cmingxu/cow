require 'spec_helper'

describe "departments/new" do
  before(:each) do
    assign(:department, stub_model(Department,
      :name => "MyString",
      :size => 1.5,
      :chaoxiang => "MyString",
      :client_id => 1,
      :project_id => 1,
      :created_by => 1
    ).as_new_record)
  end

  it "renders new department form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", departments_path, "post" do
      assert_select "input#department_name[name=?]", "department[name]"
      assert_select "input#department_size[name=?]", "department[size]"
      assert_select "input#department_chaoxiang[name=?]", "department[chaoxiang]"
      assert_select "input#department_client_id[name=?]", "department[client_id]"
      assert_select "input#department_project_id[name=?]", "department[project_id]"
      assert_select "input#department_created_by[name=?]", "department[created_by]"
    end
  end
end
