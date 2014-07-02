require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :address => "MyString",
      :code => "MyString",
      :created_by => 1,
      :desc => "MyString",
      :builder => "MyString",
      :wuye => "MyString",
      :jianli => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
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
