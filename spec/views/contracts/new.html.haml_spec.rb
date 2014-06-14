require 'spec_helper'

describe "contracts/new" do
  before(:each) do
    assign(:contract, stub_model(Contract,
      :name => "MyString",
      :added_by_id => 1,
      :code => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contracts_path, "post" do
      assert_select "input#contract_name[name=?]", "contract[name]"
      assert_select "input#contract_added_by_id[name=?]", "contract[added_by_id]"
      assert_select "input#contract_code[name=?]", "contract[code]"
      assert_select "textarea#contract_desc[name=?]", "contract[desc]"
    end
  end
end
