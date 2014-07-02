require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :name => "MyString",
      :address => "MyString",
      :code => "MyString",
      :created_by => 1,
      :desc => "MyString",
      :builder => "MyString",
      :wuye => "MyString",
      :jianli => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "input#project_address[name=?]", "project[address]"
      assert_select "input#project_code[name=?]", "project[code]"
      assert_select "input#project_created_by[name=?]", "project[created_by]"
      assert_select "input#project_desc[name=?]", "project[desc]"
      assert_select "input#project_builder[name=?]", "project[builder]"
      assert_select "input#project_wuye[name=?]", "project[wuye]"
      assert_select "input#project_jianli[name=?]", "project[jianli]"
      assert_select "textarea#project_desc[name=?]", "project[desc]"
    end
  end
end
