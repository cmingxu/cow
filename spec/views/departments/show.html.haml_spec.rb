require 'spec_helper'

describe "departments/show" do
  before(:each) do
    @department = assign(:department, stub_model(Department,
      :name => "Name",
      :size => 1.5,
      :chaoxiang => "Chaoxiang",
      :client_id => 1,
      :project_id => 2,
      :created_by => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
    rendered.should match(/Chaoxiang/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
