require 'spec_helper'

describe "craniosacrals/edit" do
  before(:each) do
    @craniosacral = assign(:craniosacral, stub_model(Craniosacral))
  end

  it "renders the edit craniosacral form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", craniosacral_path(@craniosacral), "post" do
    end
  end
end
