require 'spec_helper'

describe "book_records/show" do
  before(:each) do
    @book_record = assign(:book_record, stub_model(BookRecord,
      :client_id => 1,
      :user_id => 2,
      :project_id => 3,
      :department_id => "Department",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Department/)
    rendered.should match(/1.5/)
  end
end
