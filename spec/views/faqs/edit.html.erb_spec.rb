require 'spec_helper'

describe "faqs/edit.html.erb" do
  before(:each) do
    @faq = assign(:faq, stub_model(Faq,
      :question => "MyString",
      :answer => "MyText",
      :invalid => false
    ))
  end

  it "renders the edit faq form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => faqs_path(@faq), :method => "post" do
      assert_select "input#faq_question", :name => "faq[question]"
      assert_select "textarea#faq_answer", :name => "faq[answer]"
      assert_select "input#faq_invalid", :name => "faq[invalid]"
    end
  end
end
