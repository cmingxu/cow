require 'spec_helper'

describe "book_records/edit" do
  before(:each) do
    @book_record = assign(:book_record, stub_model(BookRecord,
      :client_id => 1,
      :user_id => 1,
      :project_id => 1,
      :department_id => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit book_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_record_path(@book_record), "post" do
      assert_select "input#book_record_client_id[name=?]", "book_record[client_id]"
      assert_select "input#book_record_user_id[name=?]", "book_record[user_id]"
      assert_select "input#book_record_project_id[name=?]", "book_record[project_id]"
      assert_select "input#book_record_department_id[name=?]", "book_record[department_id]"
      assert_select "input#book_record_price[name=?]", "book_record[price]"
    end
  end
end
