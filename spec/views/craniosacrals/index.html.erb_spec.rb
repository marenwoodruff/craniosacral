require 'spec_helper'

describe "craniosacrals/index" do
  before(:each) do
    assign(:craniosacrals, [
      stub_model(Craniosacral),
      stub_model(Craniosacral)
    ])
  end

  it "renders a list of craniosacrals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
