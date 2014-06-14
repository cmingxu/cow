require 'spec_helper'

describe "contracts/edit" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :name => "MyString",
      :added_by_id => 1,
      :code => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contract_path(@contract), "post" do
      assert_select "input#contract_name[name=?]", "contract[name]"
      assert_select "input#contract_added_by_id[name=?]", "contract[added_by_id]"
      assert_select "input#contract_code[name=?]", "contract[code]"
      assert_select "textarea#contract_desc[name=?]", "contract[desc]"
    end
  end
end
