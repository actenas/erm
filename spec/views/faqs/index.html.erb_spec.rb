require 'spec_helper'

describe "faqs/index.html.erb" do
  before(:each) do
    assign(:faqs, [
      stub_model(Faq,
        :question => "Question",
        :answer => "MyText",
        :invalid => false
      ),
      stub_model(Faq,
        :question => "Question",
        :answer => "MyText",
        :invalid => false
      )
    ])
  end

  it "renders a list of faqs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Question".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
