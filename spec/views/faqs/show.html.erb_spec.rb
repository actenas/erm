require 'spec_helper'

describe "faqs/show.html.erb" do
  before(:each) do
    @faq = assign(:faq, stub_model(Faq,
      :question => "Question",
      :answer => "MyText",
      :invalid => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Question/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
