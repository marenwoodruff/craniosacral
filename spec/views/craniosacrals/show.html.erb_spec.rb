require 'spec_helper'

describe "craniosacrals/show" do
  before(:each) do
    @craniosacral = assign(:craniosacral, stub_model(Craniosacral))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
