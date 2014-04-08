require 'spec_helper'

describe "craniosacrals/new" do
  before(:each) do
    assign(:craniosacral, stub_model(Craniosacral).as_new_record)
  end

  it "renders new craniosacral form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", craniosacrals_path, "post" do
    end
  end
end
