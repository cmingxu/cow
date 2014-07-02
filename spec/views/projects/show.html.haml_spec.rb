require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "Name",
      :address => "Address",
      :code => "Code",
      :created_by => 1,
      :desc => "Desc",
      :builder => "Builder",
      :wuye => "Wuye",
      :jianli => "Jianli",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/Code/)
    rendered.should match(/1/)
    rendered.should match(/Desc/)
    rendered.should match(/Builder/)
    rendered.should match(/Wuye/)
    rendered.should match(/Jianli/)
    rendered.should match(/MyText/)
  end
end
